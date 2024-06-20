import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:learn_philosophy_app/src/Models/statistics/statistics.dart';

final statisticsProvider = StateNotifierProvider<StatisticsNotfier, Statistics>((ref) => StatisticsNotfier());

class StatisticsNotfier extends StateNotifier<Statistics> {
  StatisticsNotfier() : super(const Statistics(
    quizesTaken: 0,
    quizesPassed: 0,
    questionsAnswered: 0,
    topicsFinished: 0,
    correctAnswers: 0,
    wrongAnswers: 0
  ));

  void updateStatistics(Statistics newStatistics) {
    state = newStatistics;
  }
  void passQuiz(){
    state = state.copyWith(quizesPassed: state.quizesPassed + 1);
  }
  void takeQuiz(){
    state = state.copyWith(quizesTaken: state.quizesTaken + 1);
  }
  void addCorrectAnswer(){
    state = state.copyWith(questionsAnswered: state.questionsAnswered + 1, correctAnswers: state.correctAnswers + 1);
  }
  void addWrongAnswer(){
    state = state.copyWith(questionsAnswered: state.questionsAnswered + 1, wrongAnswers: state.wrongAnswers + 1);
  }
  void finishTopic(){
    state = state.copyWith(topicsFinished: state.topicsFinished + 1);
  }
}