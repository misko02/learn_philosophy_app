import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:learn_philosophy_app/src/Models/statistics/statistics.dart';
import 'package:learn_philosophy_app/src/Providers/statistics_provider.dart';




class StatisticsView extends ConsumerStatefulWidget {
  const StatisticsView({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _StatisticsViewState();
}

class _StatisticsViewState extends ConsumerState<StatisticsView> {
  final box = Hive.box<Statistics>('Statistics');
  @override
  Widget build(BuildContext context) {
    Statistics stats = ref.watch(statisticsProvider);
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
                  const Text("Quizes attempts", style: TextStyle(fontSize: 18, color: Colors.white),),
                  const SizedBox(height: 10),
                  Text(stats.quizesTaken.toString(), style: const TextStyle(fontSize: 18, color: Colors.white),)
                ],
              ),
              const SizedBox(width: 20),
              Column(
                children: [
                  const Text("Quizes passed", style: TextStyle(fontSize: 18, color: Colors.white),),
                  const SizedBox(height: 10),
                  Text(stats.quizesPassed.toString(), style: const TextStyle(fontSize: 18, color:Colors.white),)
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
                  const Text("Questions answered", style: TextStyle(fontSize: 18, color:Colors.white),),
                  const SizedBox(height: 10),
                  Text(stats.questionsAnswered.toString(), style: const TextStyle(fontSize: 18, color: Colors.white),)
                ],
              ),
              const SizedBox(width: 20),
              Column(
                children: [
                  const Text("Topics finished", style: TextStyle(fontSize: 18, color:Colors.white),),
                  const SizedBox(height: 10),
                  Text(stats.topicsFinished.toString(), style: const TextStyle(fontSize: 18, color: Colors.white),)
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
                const Text("Correct answers", style: TextStyle(fontSize: 18, color: Colors.white),),
                const SizedBox(height: 10),
                Text(stats.correctAnswers.toString(), style: const TextStyle(fontSize: 18, color: Colors.white),)
              ],
            ),
            const SizedBox(width: 20),
            Column(
              children: [
                const Text("Wrong answers", style: TextStyle(fontSize: 18, color: Colors.white),),
                const SizedBox(height: 10),
                Text(stats.wrongAnswers.toString(), style: const TextStyle(fontSize: 18, color: Colors.white),)
              ],
            ),
            ],
          ),
        ],
      ),
    );
  }
}