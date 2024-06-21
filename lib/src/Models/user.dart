import 'package:learn_philosophy_app/src/Models/statistics/statistics.dart';

class User{
  String userId;
  String username;
  String password;
  String email;
  Statistics userStatistics;

  User({
    required this.userId,
    required this.username,
    required this.password,
    required this.email,
    required this.userStatistics
  });

  factory User.fromJson(Map<String, Object?> json){
    return User(
      userId: json['userId'] as String,
      username: json['username'] as String,
      password: json['password'] as String,
      email: json['email'] as String,
      userStatistics: Statistics.fromJson(json['userStatistics'] as Map<String, Object?>)
    );
  }

}