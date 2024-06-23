import 'dart:convert';
import 'package:http/http.dart' as http;
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
}