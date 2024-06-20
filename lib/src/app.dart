import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:learn_philosophy_app/src/Views/quiz_summary_view.dart';
import 'package:learn_philosophy_app/src/Views/topic_view.dart';

import 'Models/quiz/quiz.dart';
import 'Models/quiz_result.dart';
import 'Models/topic/topic.dart';
import 'Views/main_view.dart';
import 'Views/quiz_view.dart';

class MyApp extends ConsumerWidget {
  const MyApp({
    super.key,
  });


  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp(
          restorationScopeId: 'app',
          debugShowCheckedModeBanner: false,
          localizationsDelegates: const [
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          supportedLocales: const [
            Locale('en', ''), 
            Locale('pl','')
          ],
          home:  MainView(),
          onGenerateTitle: (BuildContext context) => 'Learn Philosophy app',
          theme: ThemeData(),
          darkTheme: ThemeData.dark(),
          themeMode: ThemeMode.system,
          onGenerateRoute: (RouteSettings routeSettings) {
            return MaterialPageRoute<void>(
              settings: routeSettings,
              builder: (BuildContext context) {
                switch (routeSettings.name) {
                  case '/':
                    return  MainView();
                  case '/topic/':
                    final topic = routeSettings.arguments ?? const Topic(title: "", description: "");
                    return  TopicView(topic as Topic);
                  case '/quiz/':
                    final quiz = routeSettings.arguments ?? const Quiz(title: "");
                    return  QuizView(quiz as Quiz);
                  case '/summary/':
                    final result = routeSettings.arguments ?? QuizResult(0, 0);
                    return QuizSummaryView(result as QuizResult);
                  default:
                    return  MainView();
                }
              },
            );
          },
        );
  }
}
