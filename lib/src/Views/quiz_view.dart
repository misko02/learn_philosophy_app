import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../Models/quiz/quiz.dart';

class QuizView extends ConsumerStatefulWidget {
  final Quiz quiz;
  const QuizView(this.quiz,{super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _QuestionViewState();
}

class _QuestionViewState extends ConsumerState<QuizView> {
  int correctAnswers = 0;
  int currentQuestionIndex = 0;
  @override
  Widget build(BuildContext context) {
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
        title: Text(widget.quiz.title),
      ),
      body: Expanded(
        child: Padding(
          padding: const EdgeInsets.all(32.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text (widget.quiz.questions[currentQuestionIndex].content, style: const TextStyle(fontSize: 24)),
                ListView.builder(
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                    itemCount: widget.quiz.questions[currentQuestionIndex].answers.length,
                    itemBuilder: (context, index) {
                      return ListTile(
                        title: Text(widget.quiz.questions[currentQuestionIndex].answers[index]),
                        onTap: () {
                          if (index == widget.quiz.questions[currentQuestionIndex].correctAnswerIndex) {
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(content: Text('Correct!')));
                              widget.quiz.result?.correctAnswers++;
                              correctAnswers++;
                          } else {
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(content: Text('Incorrect!')));
                              widget.quiz.result?.wrongAnswers++;
                          }
                          if (currentQuestionIndex < widget.quiz.questions.length - 1) {
                            setState((){
                              currentQuestionIndex++;
                            });
                          } 
                          else {
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(content: Text('You got $correctAnswers out of ${widget.quiz.questions.length} correct!')));
                              Navigator.pushNamed(context, '/summary/', arguments: widget.quiz.result);
                          }
                        },
                      );
                    },
                  ),
              ],
            ),
          ),
        ),
      ),
      );
  }
}