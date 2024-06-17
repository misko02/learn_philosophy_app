
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../Models/topic.dart';

class TopicView extends ConsumerWidget {
  final int index;
  const TopicView(this.index, {super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    Topic topic = const Topic(title:"Placeholder Topic", description: "Description of the topic");//ref.watch(topicProvider(index));
    return Scaffold(
      appBar: AppBar(
        leading: ButtonBar(
          children: [
            IconButton(
              icon: const Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
        title: Text("${topic.title} number $index"),
      ),
      body: Center(
        child: Text(topic.description),
      ),
      bottomNavigationBar: BottomAppBar(
        child: ButtonBar(
          alignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              icon: const Icon(Icons.arrow_back),
              onPressed: () {
                if (index > 0) {
                  Navigator.popAndPushNamed(
                    context,
                    "/topic/",
                    arguments: index - 1,
                  );
                }
              },
            ),
            IconButton(
              icon: const Icon(Icons.arrow_forward),
              onPressed: () {
                if (index < 9) {
                  Navigator.popAndPushNamed(
                    context,
                    "/topic/",
                    arguments: index + 1,
                  );
                }
              },
            ),
          ],
        ),
      )
    );
  }
}