import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../Providers/result_provider.dart';

class QuizSummaryView extends ConsumerWidget {
  const QuizSummaryView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final result = ref.watch(resultProvider);
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