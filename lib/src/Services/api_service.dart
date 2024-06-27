import 'package:learn_philosophy_app/src/Models/question/question.dart';
import 'package:logger/logger.dart';
import 'package:dio/dio.dart';
import 'package:learn_philosophy_app/src/Models/statistics/statistics.dart';
import 'package:learn_philosophy_app/src/Utilities/seed_data.dart';

import '../Models/quiz/quiz.dart';
import '../Models/topic/topic.dart';

class ApiService {
  static final Dio dio = Dio(
    BaseOptions(
      baseUrl: 'https://localhost:7146/api',
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      connectTimeout: const Duration(seconds: 5),
      receiveTimeout: const Duration(seconds: 3),
    )
  );
  static Logger logger = Logger();

 
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
      logger.e(e.toString());
    }
    return topics;
  } 
  static Future<Topic> getTopicById(int id) async{
    late Topic topic;
    try{
      final response = await dio.get('/topics/$id');
      if (response.statusCode == 200) {
        topic = Topic.fromJson(response.data);

      } else {
        throw "Can't get topic.";
      }
    }
    catch (e) {
      topic = SeedData.seedTopics.firstWhere((element) => element.topicId == id);
      logger.e(e.toString());
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
      logger.e(e.toString());
    }
    return statistics;
  }

  static Future<Quiz> getQuizById(int id) async{
    late Quiz quiz;
    try {
      final response = await dio.get('/quizzs/$id');
      if (response.statusCode != 200) {
        throw "Can't get quiz.";
      } 
      quiz = Quiz.fromJson(response.data);
    } 
    catch (e) {
      quiz = SeedData.seedTopics.firstWhere((element)=> element.topicId == id).quiz ?? Quiz(quizId: 0, title: "", questions: [Question(id: 0, content: "",answers: ["","","",""], correctAnswerIndex: 0)]);
      logger.e(e.toString());
    }
    return quiz;
  }
}