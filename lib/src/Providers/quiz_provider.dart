
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:learn_philosophy_app/src/Models/quiz/quiz.dart';

import '../Models/question/question.dart';

final quizProvider = StateProvider((ref) => 
const Quiz(
  title: "Quiz",
  questions: [
    Question(
      index: 0,
      content: "Question 1",
      answers: [
        "Answer 1",
        "Answer 2",
        "Answer 3",
        "Answer 4",
      ],
      correctAnswerIndex: 0
    ),
    Question(
      index: 1,
      content: "Question 2",
      answers: [
        "Answer 1",
        "Answer 2",
        "Answer 3",
        "Answer 4",
      ],
      correctAnswerIndex: 1
    ),
    Question(
      index: 2,
      content: "Question 3",
      answers: [
        "Answer 1",
        "Answer 2",
        "Answer 3",
        "Answer 4",
      ],
      correctAnswerIndex: 2
    ),
  ]
  ));