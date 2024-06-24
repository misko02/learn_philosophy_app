import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:learn_philosophy_app/src/Models/statistics/statistics.dart';

final statisticsProvider = StateNotifierProvider<StatisticsNotifier, Statistics>((ref) => StatisticsNotifier());


class StatisticsNotifier extends StateNotifier<Statistics> {
  StatisticsNotifier() : super(Statistics()
  );

  void updateStatistics(Statistics newStatistics) {
    state = newStatistics;
  }
  void passQuiz(){
    state.quizesPassed++;
  }
  void takeQuiz(){
    state.quizesTaken++;
  }
  void addCorrectAnswer(){
    state.questionsAnswered++;
    state.correctAnswers++;
  }
  void addWrongAnswer(){
    state.questionsAnswered++;
    state.wrongAnswers++;
  }
  void finishTopic(){
    state.topicsFinished++;
  }
}