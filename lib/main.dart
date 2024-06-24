
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:learn_philosophy_app/src/Models/quiz_result.dart';
import 'package:learn_philosophy_app/src/Models/statistics/statistics.dart';

import 'src/Models/question/question.dart';
import 'src/Models/quiz/quiz.dart';
import 'src/Models/site/site.dart';
import 'src/Models/topic/topic.dart';
import 'src/Models/user.dart';
import 'src/app.dart';

void main() async {
  await Hive.initFlutter();

  Hive.registerAdapter(TopicAdapter());
  Hive.registerAdapter(StatisticsAdapter());
  Hive.registerAdapter(UserAdapter());
  Hive.registerAdapter(SiteAdapter());
  Hive.registerAdapter(QuizAdapter());
  Hive.registerAdapter(QuestionAdapter());
  Hive.registerAdapter(QuizResultAdapter());

  await Hive.openBox<Topic>('Topics');
  await Hive.openBox<Statistics>('Statistics');
  await Hive.openBox<User>('Users');
  await Hive.openBox<Site>('Sites');
  await Hive.openBox<Quiz>('Quizzes');
  await Hive.openBox<Question>("Questions");
  await Hive.openBox<QuizResult>("QuizResults");

  runApp(const ProviderScope(child: MyApp(),));
}
