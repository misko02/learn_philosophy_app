import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../Models/site/site.dart';
import '../Models/topic/topic.dart';
import 'quiz_provider.dart';

final topicProvider = StateProvider((ref) => Topic(
  title: 'Title',
  description: 'Description',
  sites: [
    Site(
      index: 0,
      title: 'Site 1',
      content: 'Content 1'
    ),
    Site(
      index: 1,
      title: 'Site 2',
      content: 'Content 2'
    ),
    Site(
      index: 2,
      title: 'Site 3',
      content: 'Content 3'
    ),
  ],
  quiz: ref.read(quizProvider.notifier).state
)
);