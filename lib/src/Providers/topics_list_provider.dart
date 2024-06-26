
import 'package:hive_flutter/hive_flutter.dart';
import 'package:learn_philosophy_app/src/Services/api_service.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../Models/topic/topic.dart';

part 'topics_list_provider.g.dart';

@riverpod
class TopicsList extends _$TopicsList {
  @override
   Future<List<Topic>> build() async{
    var box = await Hive.openBox<Topic>('Topics');
    if(box.values.isNotEmpty)  return box.values.toList();
    box.addAll(await ApiService.getTopics());
    return box.values.toList();
  }
  
}