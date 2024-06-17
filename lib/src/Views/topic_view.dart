
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../Models/topic/topic.dart';

 class TopicView extends ConsumerStatefulWidget {
  final Topic topic;
  int currentSiteIndex = 0;
  TopicView(this.topic,{super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _TopicViewState();
}

class _TopicViewState extends ConsumerState<TopicView> {

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
            Text (widget.topic.sites[widget.currentSiteIndex].title, style: const TextStyle(fontSize: 24)),
            Center(
              child: Text(widget.topic.sites[widget.currentSiteIndex].content),
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
                if (widget.currentSiteIndex > 0) {
                  setState((){
                    widget.currentSiteIndex--;
                  });
                }
              },
            ),
            TextButton(
              child: const Text("Try Yourself"),
              onPressed: () {
                setState(() {
                });
              },
            ),
            IconButton(
              icon: const Icon(Icons.arrow_forward),
              onPressed: () {
                if ( widget.currentSiteIndex < widget.topic.sites.length - 1) {
                  setState(() {
                    widget.currentSiteIndex++;
                  });
                }
              },
            ),
          ],
        ),
      )
    );
  }
}