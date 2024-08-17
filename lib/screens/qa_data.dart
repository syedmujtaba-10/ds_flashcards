import 'dart:math';

class QAItem {
  final String question;
  final String answer;
  final String wrongAnswer;
  bool isAnswerVisible;
  late bool isACorrect; // Determines if A (true) or B (false) is correct

  QAItem(
      {required this.question,
      required this.answer,
      required this.wrongAnswer,
      this.isAnswerVisible = false}) {
    // Randomly decide if A or B is the correct answer
    isACorrect = Random().nextBool();
  }
}
