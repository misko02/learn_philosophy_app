import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';
import 'package:learn_philosophy_app/src/Models/statistics/statistics.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@unfreezed
class User extends HiveObject with _$User{
  @HiveType(typeId: 6, adapterName: 'UserAdapter')
  factory User({
    @HiveField(0) required String username,
    @HiveField(1) required String email,
    @HiveField(2) required String password,
    @HiveField(3) required Statistics statistics
  }) = _User;

  User._();

  factory User.fromJson(Map<String, Object?> json) => _$UserFromJson(json);
}