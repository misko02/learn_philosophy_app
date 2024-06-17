import 'package:freezed_annotation/freezed_annotation.dart';

part 'site.freezed.dart';
part 'site.g.dart';

@freezed
class Site with _$Site{

factory Site({
  required int index,
  required String title,
  required String content,
}) = _Site;

factory Site.fromJson(Map<String, Object?> json) => _$SiteFromJson(json);
}