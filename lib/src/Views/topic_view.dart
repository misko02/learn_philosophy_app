
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:learn_philosophy_app/src/Providers/statistics_provider.dart';

import '../Models/topic/topic.dart';

 class TopicView extends ConsumerStatefulWidget {
  final Topic topic;
  const TopicView(this.topic,{super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _TopicViewState();
}

class _TopicViewState extends ConsumerState<TopicView> {
  int currentSiteIndex = 0;
  @override
  Widget build(BuildContext context) {
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
        title: Text(widget.topic.title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(32.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text (widget.topic.sites[currentSiteIndex].title, style: const TextStyle(fontSize: 24)),
            Center(
              child: Text(widget.topic.sites[currentSiteIndex].content),
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
                print(widget.topic.quiz.title);
                ref.read(statisticsProvider.notifier).takeQuiz();
                Navigator.pushNamed(context, '/quiz/', arguments: widget.topic.quiz);
                setState(() {
                });
              },
            ),
            IconButton(
              icon: const Icon(Icons.arrow_forward),
              onPressed: () {
                if ( currentSiteIndex < widget.topic.sites.length - 1) {
                  setState(() {
                    currentSiteIndex++;
                  });
                  if (currentSiteIndex == widget.topic.sites.length - 1) {
                    ref.read(statisticsProvider.notifier).finishTopic();
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