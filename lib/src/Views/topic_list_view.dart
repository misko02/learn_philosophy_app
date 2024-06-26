import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:learn_philosophy_app/src/Providers/topic_provider.dart';
import 'package:learn_philosophy_app/src/Services/api_service.dart';
import 'package:logger/logger.dart';

import '../Models/topic/topic.dart';
import '../Providers/topics_list_provider.dart';

final logger = Logger();


class TopicListView extends ConsumerStatefulWidget {
  const TopicListView({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => 

  _TopicListViewState();
}

class _TopicListViewState extends ConsumerState<TopicListView> {

  @override
  Widget build(BuildContext context) {
    List<Topic> topics = ref.watch(topicsListProvider).value??[];
    return topics.isNotEmpty?ListView.builder(
      itemCount: topics.length,
      itemBuilder: (context, index) {
      return ListTile(
        title: Text(topics[index].title, style: const TextStyle(fontSize: 24, color: Colors.white)),
        subtitle: Text(topics[index].description, style: const TextStyle(fontSize: 18, color: Colors.white)),
        onTap: () async {
          var box = await Hive.openBox<Topic>('Topics');
          ref.read(topicProvider.notifier).state = box.get(topics[index].topicId) ?? await ApiService.getTopicById(topics[index].topicId);
          box.put(topics[index].topicId, ref.read(topicProvider.notifier).state);
          Navigator.pushNamed(context, '/topic/');
        },
      );
    }): const Center(child: CircularProgressIndicator());
  }
}