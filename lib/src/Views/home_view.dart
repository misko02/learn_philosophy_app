import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomeView extends ConsumerWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SingleChildScrollView(
      child:Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset('assets/images/logo.jpg', height: 600,),
            const Text("Welcome to Learn Philosophy app", style: TextStyle(fontSize: 24, color:Colors.white),),
            const Text("This app is designed to help you learn philosophy", style: TextStyle(fontSize: 18, color: Colors.white),),
            const SizedBox(height: 20),
            const Text("Author of app: Michal Bojara", style: TextStyle(fontSize: 18, color: Colors.white)),
        ],),
      ),
    );
  }
}