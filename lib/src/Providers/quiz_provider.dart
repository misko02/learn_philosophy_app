import 'package:hive_flutter/hive_flutter.dart';
import 'package:learn_philosophy_app/src/Models/quiz/quiz.dart';
import 'package:logger/logger.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../Services/api_service.dart';

part 'quiz_provider.g.dart';

  final logger = Logger();

  @riverpod
  class QuizState extends _$QuizState {
    @override
    Future<Quiz> build() async{
      var box = await Hive.openBox<Quiz>('Quizzes');
      if(box.get('quiz') != null)  return box.get('quiz')!;                   
      box.put('quiz', await ApiService.getQuizById(0));
      state = AsyncData(box.get('quiz')!).whenData((data)=> box.get('quiz')!);
      return box.get('quiz')!;
    }

    Future<void> takeQuiz(int id) async{
      try{
        if(!Hive.isBoxOpen('Quizzes')) await Hive.openBox<Quiz>('Quizzes');
        var box = Hive.box<Quiz>('Quizzes');
        var quiz = await ApiService.getQuizById(id);
        state = AsyncData(quiz).whenData((data)=> quiz);
        box.put('quiz',state.value!);
      }
      on Exception catch(e){
        logger.e(e.toString());
      }
    }
  }