
import 'package:learn_philosophy_app/src/Services/api_service.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../Models/topic/topic.dart';

part 'topics_list_provider.g.dart';

@riverpod
class TopicsList extends _$TopicsList {
  @override
   Future<List<Topic>> build() async{
    return await ApiService.getTopics();
  }
}