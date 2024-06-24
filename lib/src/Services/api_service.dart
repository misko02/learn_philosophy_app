import 'dart:convert';
import 'package:logging/logging.dart';
import 'package:dio/dio.dart';
import 'package:learn_philosophy_app/src/Models/statistics/statistics.dart';
import 'package:learn_philosophy_app/src/Utilities/seed_data.dart';

import '../Models/topic/topic.dart';

class ApiService {
  static final Dio dio = Dio(
    BaseOptions(
      baseUrl: 'https://localhost:7146/api',
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      connectTimeout: const Duration(seconds: 2),
      receiveTimeout: const Duration(seconds: 2),
    )
  );
  static Logger logger = Logger('ApiService');

 
  static Future<List<Topic>> getTopics() async {
    late List<Topic> topics = [];
    try{
      final response = await dio.get('/topics');
      if (response.statusCode == 200) {
        List<dynamic> body = response.data;
        topics = body.map((dynamic item) => Topic.fromJson(item)).toList();
      } else {
        throw "Can't get topics.";
      }
    }
     catch (e) {
      topics = SeedData.seedTopics;
      logger.log(Level.WARNING, e.toString());
    }
    return topics;
  } 
  static Future<Topic> getTopicById(int id) async{
    late Topic topic;
    try{
      final response = await dio.get('/topics/$id');
      if (response.statusCode == 200) {
        topic = Topic.fromJson(jsonDecode(response.data));
      } else {
        throw "Can't get topic.";
      }
    }
    catch (e) {
      topic = SeedData.seedTopics.firstWhere((element) => element.topicId == id);
      logger.log(Level.WARNING, e.toString());
    }
    return topic;
  }
  
  static Future<Statistics> getStatistics() async {
    late Statistics statistics;
    try {
      final response = await dio.get('/statistics');
      if (response.statusCode != 200) {
        throw "Can't get statistics.";
      } 
      statistics = Statistics.fromJson(response.data);
    } 
    catch (e) {
      statistics = Statistics();
      logger.log(Level.WARNING, e.toString());
    }
    return statistics;
  }
}