import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'site.freezed.dart';
part 'site.g.dart';

@freezed
class Site with _$Site{

@HiveType(typeId: 2, adapterName: 'SiteAdapter')
factory Site({
  @HiveField(0) required int id,
  @HiveField(1) @Default('') final String title,
  @HiveField(2) @Default('') final String content,
}) = _Site;


factory Site.fromJson(Map<String, Object?> json) => _$SiteFromJson(json);
}