import 'qa_data.dart';

class DataRepository {
  final Map<String, List<QAItem>> topicsData = {
    'Array': [
      QAItem(
          question: "What is an array?",
          answer:
              "An array is a collection of items stored at contiguous memory locations.",
          wrongAnswer: "A list of items stored randomly in memory."),
      QAItem(
          question: "How do you access an element in an array?",
          answer:
              "You can access an element in an array by using its index, starting with 0 for the first element.",
          wrongAnswer: "By specifying the element's value."),
      QAItem(
          question:
              "What is the time complexity to access an element in an array?",
          answer:
              "Accessing an element in an array has a time complexity of O(1).",
          wrongAnswer: "O(n), where n is the length of the array."),
      QAItem(
          question: "What is an array's size limitation?",
          answer:
              "An array's size is fixed and must be specified when the array is created.",
          wrongAnswer: "An array can dynamically grow as needed."),
      QAItem(
          question: "How do you initialize an array in Java?",
          answer:
              "int[] array = new int[10]; initializes an array of ten integers.",
          wrongAnswer: "int array = new int[10];"),
      QAItem(
          question: "What is a multidimensional array?",
          answer:
              "A multidimensional array is an array of arrays, where each element is itself an array.",
          wrongAnswer: "An array with multiple data types."),
      QAItem(
          question: "How can you copy an array?",
          answer:
              "You can copy an array using the System.arraycopy() method in Java, or libraries like Arrays.copyOf().",
          wrongAnswer: "By assigning one array variable to another."),
      QAItem(
          question: "What are the disadvantages of using an array?",
          answer:
              "Arrays have a fixed size and don't easily allow for the insertion or deletion of elements.",
          wrongAnswer:
              "Arrays provide a dynamic structure that changes size automatically."),
      QAItem(
          question:
              "What is the difference between an array and a linked list?",
          answer:
              "An array allocates memory in contiguous blocks, whereas a linked list uses pointers to connect nodes stored anywhere in memory.",
          wrongAnswer:
              "There is no significant difference; both store elements in contiguous memory locations."),
      QAItem(
          question: "Can arrays contain duplicate elements?",
          answer:
              "Yes, arrays can contain duplicate elements unless specifically programmed not to.",
          wrongAnswer: "No, arrays cannot contain duplicate elements."),
    ],
    'Stack': [
      QAItem(
          question: "What is a stack?",
          answer:
              "A stack is a linear data structure which follows the LIFO (Last In First Out) principle.",
          wrongAnswer: "A data structure that allows access from both ends."),
      QAItem(
          question: "What operations are typically supported by a stack?",
          answer:
              "The main operations are push (add to top), pop (remove from top), and peek (view top element).",
          wrongAnswer: "Insert and remove from any position."),
      QAItem(
          question: "What can stacks be used for in computing?",
          answer:
              "Stacks are used for expression evaluation, syntax parsing, function call management, and backtracking algorithms.",
          wrongAnswer: "Data storage for user information."),
      QAItem(
          question: "How is a stack implemented?",
          answer:
              "A stack can be implemented using arrays, linked lists, or dynamic arrays.",
          wrongAnswer: "Using a first in first out (FIFO) queue."),
      QAItem(
          question: "What is underflow and overflow in a stack?",
          answer:
              "Underflow occurs if you try to pop an element from an empty stack, and overflow happens when you try to push an element onto a full stack.",
          wrongAnswer: "Underflow and overflow do not occur in stacks."),
      QAItem(
          question:
              "What is a recursive function and how is it managed by a stack?",
          answer:
              "A recursive function calls itself repeatedly. Each call is stored in a stack frame until the base case is reached.",
          wrongAnswer: "Recursive functions do not use stack memory at all."),
      QAItem(
          question: "How do you reverse a string using a stack?",
          answer:
              "Push each character of the string onto a stack and then pop characters from the stack.",
          wrongAnswer: "By rearranging the characters randomly."),
      QAItem(
          question: "What does peek operation do?",
          answer:
              "The peek operation returns the top element of the stack without removing it.",
          wrongAnswer: "Removes the bottom element of the stack."),
      QAItem(
          question: "What are the applications of a stack?",
          answer:
              "Applications include reversing words, undo mechanisms in applications, and syntax parsing in compilers.",
          wrongAnswer: "Storing permanent data that requires frequent access."),
      QAItem(
          question: "How do you check balanced parentheses using a stack?",
          answer:
              "Push each opening parenthesis onto a stack and pop when a closing parenthesis is encountered. If the stack is empty at the end, the parentheses are balanced.",
          wrongAnswer:
              "By counting the number of opening and closing parentheses."),
    ],
    'B-Tree': [
      QAItem(
          question: "What is a B-Tree?",
          answer:
              "A B-Tree is a self-balancing tree data structure that maintains sorted data and allows searches, sequential access, insertions, and deletions in logarithmic time.",
          wrongAnswer: "A binary tree that is always unbalanced."),
      QAItem(
          question: "What are the main characteristics of a B-Tree?",
          answer:
              "A B-Tree is characterized by its variable number of children per node, which is governed by the tree's order. Each node contains keys that act as separators for guiding searches and children pointers.",
          wrongAnswer: "B-Trees have a fixed number of children per node."),
      QAItem(
          question: "How does a B-Tree differ from a binary search tree?",
          answer:
              "Unlike a binary search tree where each node has at most two children, a B-Tree node can have many children, usually defined by the order of the tree. B-Trees are optimized for systems that read and write large blocks of data.",
          wrongAnswer:
              "B-Trees and binary search trees are identical in structure and function."),
      QAItem(
          question:
              "What is the minimum and maximum number of children a B-Tree node can have?",
          answer:
              "In a B-Tree of order m, each node except the root must have at least ⌈m/2⌉ children and can have at most m children.",
          wrongAnswer:
              "There is no minimum or maximum number of children in B-Trees."),
      QAItem(
          question: "What is the order of a B-Tree?",
          answer:
              "The order of a B-Tree is the maximum number of children that any node can have. It is also a measure of the tree's branching factor.",
          wrongAnswer:
              "The order of a B-Tree is determined by the number of nodes."),
      QAItem(
          question: "How are insertions handled in a B-Tree?",
          answer:
              "When inserting a new key, it is placed in the appropriate leaf node. If the leaf node exceeds the maximum number of keys, it splits into two nodes and the middle key is promoted to help maintain the B-Tree properties.",
          wrongAnswer: "New keys are always added to the root."),
      QAItem(
          question: "How are deletions handled in a B-Tree?",
          answer:
              "When a key is deleted, if the node has fewer keys than required, nodes are merged or keys are redistributed with siblings. This may cause a recursive restructuring to maintain the B-Tree properties.",
          wrongAnswer: "Deletions are not allowed in B-Trees."),
      QAItem(
          question: "What are the advantages of using a B-Tree?",
          answer:
              "B-Trees are highly efficient for storage systems that read and write large blocks of data. They minimize disk I/O operations and handle large data volumes effectively by maintaining a balanced structure.",
          wrongAnswer:
              "B-Trees are simpler and require less memory than other data structures."),
      QAItem(
          question:
              "How does a B-Tree ensure that all leaf nodes are at the same depth?",
          answer:
              "B-Trees maintain balance by ensuring that all operations of insertion and deletion propagate changes back to the root if necessary, thus maintaining uniform depth across all leaf nodes.",
          wrongAnswer: "Leaf nodes depth varies widely in B-Trees."),
      QAItem(
          question: "Can B-Trees be used for indexing in databases?",
          answer:
              "Yes, B-Trees are widely used for indexing in databases because they allow efficient insertion, deletion, and retrieval operations, which are critical for database performance.",
          wrongAnswer: "B-Trees are not suitable for database indexing."),
    ],
  };

  List<QAItem> getTopicData(String topic) {
    return topicsData[topic] ?? [];
  }
}
