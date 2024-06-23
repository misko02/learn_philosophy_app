
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:learn_philosophy_app/src/Models/quiz/quiz.dart';

import '../Models/question/question.dart';

final quizProvider = StateProvider((ref) => 
const Quiz(
  quizId: 0,
  title: "Quiz",
  questions: [
    Question(
      id: 0,
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
      id: 1,
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
      id: 2,
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