import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:learn_philosophy_app/src/Models/statistics.dart';


class StatisticsView extends ConsumerStatefulWidget {
  const StatisticsView({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _StatisticsViewState();
}

class _StatisticsViewState extends ConsumerState<StatisticsView> {
  Statistics placeholder = const Statistics(
    quizesTaken: 10,
    quizesPassed: 5,
    questionsAnswered: 100,
    topicsFinished: 3
  );

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text("Statistics", style: TextStyle(fontSize: 32, color: Colors.red),),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  const Text("Quizes attempts", style: TextStyle(fontSize: 18),),
                  const SizedBox(height: 10),
                  Text(placeholder.quizesTaken.toString(), style: const TextStyle(fontSize: 18),)
                ],
              ),
              const SizedBox(width: 20),
              Column(
                children: [
                  const Text("Quizes passed", style: TextStyle(fontSize: 18),),
                  const SizedBox(height: 10),
                  Text(placeholder.quizesPassed.toString(), style: const TextStyle(fontSize: 18),)
                ],
              ),
            ],
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  const Text("Questions answered", style: TextStyle(fontSize: 18),),
                  const SizedBox(height: 10),
                  Text(placeholder.questionsAnswered.toString(), style: const TextStyle(fontSize: 18),)
                ],
              ),
              const SizedBox(width: 20),
              Column(
                children: [
                  const Text("Topics finished", style: TextStyle(fontSize: 18),),
                  const SizedBox(height: 10),
                  Text(placeholder.topicsFinished.toString(), style: const TextStyle(fontSize: 18),)
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}