import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../Models/topic.dart';

class TopicListView extends ConsumerStatefulWidget {
  const TopicListView({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _TopicListViewState();
}

class _TopicListViewState extends ConsumerState<TopicListView> {

  final topics = [
    const Topic(title:"Topic 1", description: "This is the first topic"),
    const Topic(title: "Topic 2", description: "This is the second topic"),
    const Topic(title: "Topic 3", description: "This is the third topic")
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: topics.length,
      itemBuilder: (context, index) {
      return ListTile(
        title: Text(topics[index].title),
        onTap: () {

          Navigator.pushNamed(context, '/topic/', arguments: index);
        },
      );
    });
  }
}