import 'package:hive_flutter/hive_flutter.dart';
import 'package:learn_philosophy_app/src/Models/statistics/statistics.dart';
import 'package:logger/logger.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../Services/api_service.dart';

part 'statistics_provider.g.dart';

final logger = Logger();

@riverpod
class StatisticsState extends _$StatisticsState {
  @override
  Future<Statistics> build() async{
    var box = await Hive.openBox<Statistics>('Statistics');
    if(box.get('stats') != null)  return box.get('stats')!;
    box.put('stats', await ApiService.getStatistics());
    state = AsyncData(box.get('stats')!);
    return box.get('stats')!;
  }

   void updateStatistics(Statistics newStatistics) async {
    try {
      var box = Hive.box<Statistics>('Statistics');
      state = AsyncData(newStatistics);
      box.put('stats', newStatistics);
    } on Exception catch (e) {
      logger.e(e.toString());
    }
  }
  void passQuiz() async {
    try{
      if(!Hive.isBoxOpen('Statistics')) await Hive.openBox<Statistics>('Statistics');
      var box = Hive.box<Statistics>('Statistics');
      state = AsyncData(box.get('stats')??Statistics());
      state.value?.quizesPassed++;
      box.put('stats',state.value!);
    }
    on Exception catch (e) {
      logger.e(e.toString());
    }
  }
  void takeQuiz() async{
    try{
      if(!Hive.isBoxOpen('Statistics')) await Hive.openBox<Statistics>('Statistics');
      var box = Hive.box<Statistics>('Statistics');
      state = AsyncData(box.get('stats')??Statistics());
      state.value?.quizesTaken++;
      box.put('stats',state.value!);
    }
    on Exception catch (e) {
      logger.e(e.toString());
    }
  }
  void addCorrectAnswer()async{
    try
    {
      if(!Hive.isBoxOpen('Statistics')) await Hive.openBox<Statistics>('Statistics');
      var box = Hive.box<Statistics>('Statistics');
      state = AsyncData(box.get('stats')??Statistics());
      state.value?.questionsAnswered++;
      state.value?.correctAnswers++;
      box.put('stats',state.value!);
    }
    on Exception catch (e) 
    {
      logger.e(e.toString());
    }
  }
  void addWrongAnswer() async {
    try 
    {
        if(!Hive.isBoxOpen('Statistics')) await Hive.openBox<Statistics>('Statistics');
        var box = Hive.box<Statistics>('Statistics');
        state = AsyncData(box.get('stats')??Statistics());
        state.value?.questionsAnswered++;
        state.value?.wrongAnswers++;
        box.put('stats',state.value!);
    } 
    on Exception catch (e) {
        logger.e(e.toString());
    }
  }
  void finishTopic() async{
    try
    {
      if(!Hive.isBoxOpen('Statistics')) await Hive.openBox<Statistics>('Statistics');
      var box = Hive.box<Statistics>('Statistics');
      state = AsyncData(box.get('stats')??Statistics());
      state.value?.topicsFinished++;
      box.put('stats',state.value??Statistics());
    }
    on Exception catch(e)
    {
      logger.e(e.toString());
    }
  }
}