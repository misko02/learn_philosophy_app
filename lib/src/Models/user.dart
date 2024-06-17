import 'package:learn_philosophy_app/src/Models/statistics/statistics.dart';

class User{
  String userId;
  String username;
  String password;
  String email;
  List<Statistics> statistics;

  User({
    required this.userId,
    required this.username,
    required this.password,
    required this.email,
    required this.statistics
  });

  factory User.fromJson(Map<String, Object?> json){
    return User(
      userId: json['userId'] as String,
      username: json['username'] as String,
      password: json['password'] as String,
      email: json['email'] as String,
      statistics: (json['statistics'] as List<Object?>).map((e) => Statistics.fromJson(e as Map<String, Object?>)).toList()
    );
  }

}