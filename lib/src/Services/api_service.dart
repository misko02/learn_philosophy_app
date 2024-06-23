import 'dart:convert';
import 'package:logging/logging.dart';
import 'package:http/http.dart' as http;
import 'package:learn_philosophy_app/src/Models/statistics/statistics.dart';
import 'package:learn_philosophy_app/src/Utilities/seed_data.dart';

import '../Models/topic/topic.dart';

class ApiService {
  static const String baseUrl = 'https://localhost:7146/api';
 
  static Future<List<Topic>> getTopics() async {
    late List<Topic> topics = [];
    try{
      final response = await http.get(Uri.parse('$baseUrl/topics'));
      if (response.statusCode == 200) {
        List<dynamic> body = jsonDecode(response.body);
        topics = body.map((dynamic item) => Topic.fromJson(item)).toList();
      } else {
        throw "Can't get topics.";
      }
    }
     catch (e) {
      topics = SeedData.seedTopics;
      print(e.toString());
    }
    return topics;
  } 
  static Future<Topic> getTopicById(int id) async{
    late Topic topic;
    try{
      final response = await http.get(Uri.parse('$baseUrl/topics/$id'));
      if (response.statusCode == 200) {
        topic = Topic.fromJson(jsonDecode(response.body));
      } else {
        throw "Can't get topic.";
      }
    }
    catch (e) {
      topic = SeedData.seedTopics.firstWhere((element) => element.id == id);
      print(e.toString());
    }
    return topic;
  }
  static Future<Statistics> getStatistics() async {
    late Statistics statistics;
    try {
      final response = await http.get(Uri.parse('$baseUrl/statistics'));
      if (response.statusCode != 200) {
        throw "Can't get statistics.";
      } 
      statistics = Statistics.fromJson(jsonDecode(response.body));
    } 
    catch (e) {
      statistics = const Statistics(quizesTaken: 0, quizesPassed: 0, topicsFinished: 0, questionsAnswered: 0, correctAnswers: 0, wrongAnswers: 0);
      final log = Logger('ApiService');
      log.info(e.toString());
    }
    return statistics;
  }
}