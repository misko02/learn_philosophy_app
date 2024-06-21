import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:learn_philosophy_app/src/Providers/topic_provider.dart';
import 'package:learn_philosophy_app/src/Services/api_service.dart';

import '../Models/topic/topic.dart';

class TopicListView extends ConsumerStatefulWidget {
  const TopicListView({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => 

  _TopicListViewState();
}

class _TopicListViewState extends ConsumerState<TopicListView> {

  late List<Topic> topics = [];
  
  void getData() async {
    topics = await ApiService.getTopics();
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    getData();
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: topics.length,
      itemBuilder: (context, index) {
      return ListTile(
        title: Text(topics[index].title, style: const TextStyle(fontSize: 24, color: Colors.white)),
        subtitle: Text(topics[index].description, style: const TextStyle(fontSize: 18, color: Colors.white)),
        onTap: () {
          ref.read(topicProvider.notifier).state = topics[index];
          Navigator.pushNamed(context, '/topic/');
        },
      );
    });
  }
}