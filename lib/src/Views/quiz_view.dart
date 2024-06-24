import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:learn_philosophy_app/src/Models/quiz_result.dart';
import 'package:learn_philosophy_app/src/Providers/quiz_provider.dart';
import 'package:learn_philosophy_app/src/Providers/result_provider.dart';
import 'package:learn_philosophy_app/src/Providers/statistics_provider.dart';

class QuizView extends ConsumerStatefulWidget {
  const QuizView({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _QuestionViewState();
}

class _QuestionViewState extends ConsumerState<QuizView> {
  int correctAnswers = 0;
  int currentQuestionIndex = 0;
  @override
  Widget build(BuildContext context) {
   final quiz = ref.read(quizProvider.notifier).state;
    return Scaffold(
      appBar: AppBar(
        leading: ButtonBar(
          children: [
            IconButton(
              icon: const Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
        title: Text(quiz.title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(32.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text (quiz.questions[currentQuestionIndex].content??"", style: const TextStyle(fontSize: 24)),
              ListView.builder(
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                  itemCount: quiz.questions[currentQuestionIndex].answers.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text(quiz.questions[currentQuestionIndex].answers[index]),
                      onTap: () {
                        if (index == quiz.questions[currentQuestionIndex].correctAnswerIndex) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(content: Text('Correct!')));
                            quiz.result?.correctAnswers++;
                            ref.read(statisticsProvider.notifier).addCorrectAnswer();
                            correctAnswers++;
                        } else {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(content: Text('Incorrect!')));
                            ref.read(statisticsProvider.notifier).addWrongAnswer();
                            quiz.result?.wrongAnswers++;
                        }
                        if (currentQuestionIndex < quiz.questions.length - 1) {
                          setState((){
                            currentQuestionIndex++;
                          });
                        } 
                        else {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(content: Text('You got $correctAnswers out of ${quiz.questions.length} correct!')));
                            ref.read(statisticsProvider.notifier).passQuiz();
                            ref.read(resultProvider.notifier).state = quiz.result?? QuizResult(correctAnswers: 0, wrongAnswers: 0);
                            Navigator.pushNamed(context, '/summary/');
                        }
                      },
                    );
                  },
                ),
            ],
          ),
        ),
      ),
      );
  }
}