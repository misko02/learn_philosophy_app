import 'package:hive_flutter/hive_flutter.dart';
import 'package:logger/logger.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../Models/topic/topic.dart';
import '../Services/api_service.dart';

part 'topic_provider.g.dart';

final logger = Logger();

@riverpod
class TopicState extends _$TopicState {
  @override
  Future<Topic> build() async{
    var box = await Hive.openBox<Topic>('Topics');
      if(box.get(0) != null)  return box.get(0)!;                   
      box.put(0, await ApiService.getTopicById(0));
      state = AsyncData(box.get(0)!).whenData((data)=> box.get(0)!);
      return box.get(0)!;
  }

  Future<void> getTopic(int id) async{
    try{
      if(!Hive.isBoxOpen('Topics')) await Hive.openBox<Topic>('Topics');
      var box = Hive.box<Topic>('Topics');
      var topic = await ApiService.getTopicById(id);
      state = AsyncData(topic).whenData((data)=> topic);
      box.put(0,state.value!);
    }
    on Exception catch(e){
      logger.e(e.toString());
    }
  }
}