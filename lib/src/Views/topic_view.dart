
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:learn_philosophy_app/src/Providers/statistics_provider.dart';
import 'package:learn_philosophy_app/src/Providers/topic_provider.dart';

import '../Providers/quiz_provider.dart';


 class TopicView extends ConsumerStatefulWidget {
  const TopicView({super.key});
  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _TopicViewState();
}

class _TopicViewState extends ConsumerState<TopicView> {
  int currentSiteIndex = 0;
  @override
  Widget build(BuildContext context) {
    final topic = ref.read(topicProvider.notifier).state;
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
        title: Text(topic.title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(32.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text (topic.sites[currentSiteIndex].title, style: const TextStyle(fontSize: 24)),
            Center(
              child: Text(topic.sites[currentSiteIndex].content),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: ButtonBar(
          alignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              icon: const Icon(Icons.arrow_back),
              onPressed: () {
                if (currentSiteIndex > 0) {
                  setState((){
                    currentSiteIndex--;
                  });
                }
              },
            ),
            TextButton(
              child: const Text("Try Yourself"),
              onPressed: () {
                ref.watch(statisticsStateProvider);
                ref.watch(quizStateProvider);
                ref.read(quizStateProvider.notifier).takeQuiz(ref.read(topicProvider.notifier).state.topicId);
                
                Navigator.pushNamed(context, '/quiz/');
                setState(() {
                });
              },
            ),
            IconButton(
              icon: const Icon(Icons.arrow_forward),
              onPressed: () {
                if ( currentSiteIndex < topic.sites.length - 1) {
                  setState(() {
                    currentSiteIndex++;
                  });
                  if (currentSiteIndex == topic.sites.length - 1) {
                    ref.read(statisticsStateProvider.notifier).finishTopic();
                  }
                }
              },
            ),
          ],
        ),
      )
    );
  }
}