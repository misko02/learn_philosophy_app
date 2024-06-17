import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:learn_philosophy_app/src/Models/quiz_result.dart';

class QuizSummaryView extends ConsumerWidget {
  final QuizResult result;
  const QuizSummaryView(this.result, {super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return 
    Scaffold(
      appBar: AppBar(
        leading: ButtonBar(
          children: [
            IconButton(
              icon: const Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.popUntil(context, ModalRoute.withName('/'));
              },
            ),
          ],
        ),
        title: const Text("Quiz Summary"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(32.0),
        child:  Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Correct answers: ${result.correctAnswers}"),
            Text("Wrong answers: ${result.wrongAnswers}"),
            Text("Score: ${result.correctAnswers / (result.correctAnswers + result.wrongAnswers) * 100}%"),
            ],
          )
        ),
      ),
    );
   
  }
}