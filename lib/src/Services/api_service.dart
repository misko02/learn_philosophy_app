import 'dart:convert';
import 'package:http/http.dart' as http;

import '../Models/topic.dart';

class ApiService {
  final String baseUrl = 'https://localhost:7146/api';

  Future<List<Topic>> getTopics() async {
    final response = await http.get(Uri.parse('$baseUrl/topics'));
    if (response.statusCode == 200) {
      List<dynamic> body = jsonDecode(response.body);
      List<Topic> topics = body.map((dynamic item) => Topic.fromJson(item)).toList();
      return topics;
    } else {
      throw "Can't get topics.";
    }
  } 
}