import 'package:flutter/material.dart';
import 'package:swipe_cards/swipe_cards.dart';
import 'data_repository.dart';
import 'qa_data.dart';

class SwipeScreen extends StatefulWidget {
  final String topic;

  SwipeScreen({required this.topic});

  @override
  _SwipeScreenState createState() => _SwipeScreenState();
}

class _SwipeScreenState extends State<SwipeScreen> {
  List<SwipeItem> swipeItems = [];
  late MatchEngine matchEngine;
  bool isStackFinished = false;
  int correctAnswers = 0; // To keep score of correct answers

  @override
  void initState() {
    super.initState();
    List<QAItem> topicData = DataRepository().getTopicData(widget.topic);
    swipeItems = topicData.map((qaItem) {
      return SwipeItem(
        content: qaItem,
        likeAction: () {
          // Swipe right is considered selecting A
          if (qaItem.isACorrect) {
            correctAnswers++;
          }
        },
        nopeAction: () {
          // Swipe left is considered selecting B
          if (!qaItem.isACorrect) {
            correctAnswers++;
          }
        },
        superlikeAction: () {},
      );
    }).toList();
    matchEngine = MatchEngine(swipeItems: swipeItems);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('${widget.topic} Questions'),
      ),
      body: Column(
        children: [
          Expanded(
            child: SwipeCards(
              matchEngine: matchEngine,
              itemBuilder: (BuildContext context, int index) {
                QAItem item = swipeItems[index].content as QAItem;
                return Card(
                  elevation: 4.0,
                  margin: EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
                  child: Container(
                    width: double.infinity,
                    padding: EdgeInsets.all(16.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(item.question,
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center),
                        SizedBox(height: 20),
                        Text(
                            'A: ${item.isACorrect ? item.answer : item.wrongAnswer}',
                            style: TextStyle(color: Colors.black)),
                        Text(
                            'B: ${!item.isACorrect ? item.answer : item.wrongAnswer}',
                            style: TextStyle(color: Colors.black)),
                        SizedBox(height: 20),
                        Text('Swipe right for A, left for B',
                            style: TextStyle(fontWeight: FontWeight.bold)),
                      ],
                    ),
                  ),
                );
              },
              onStackFinished: () {
                setState(() {
                  isStackFinished = true;
                });
              },
            ),
          ),
          if (isStackFinished)
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'You got $correctAnswers out of ${swipeItems.length} correct!',
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.green),
              ),
            ),
        ],
      ),
    );
  }
}
