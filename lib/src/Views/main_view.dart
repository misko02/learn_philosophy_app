
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'home_view.dart';
import 'settings_view.dart';
import 'statistics_view.dart';
import 'topic_list_view.dart';

// ignore: must_be_immutable
class MainView extends ConsumerStatefulWidget {
   MainView({super.key});

   String route = "/";
 
  @override
  ConsumerState<MainView> createState() => _MainViewState();
}

class _MainViewState extends ConsumerState<MainView> {
   final routes = {
    "/": const HomeView(),
    "/topics": const TopicListView(),
    "/settings": const SettingsView(),
    "/stastics": const StatisticsView(),
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      appBar: AppBar(
        leading: 
            Builder(
              builder: (context) => IconButton(
              icon: const Icon(Icons.menu),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              }
            ),
          ),
        title: const Text('Learn Philosophy'),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.grey,
              ),
              child: Center(child:Text('Learn Philosophy', style: TextStyle(fontFamily: "Times New Roman",fontSize: 32, color: Colors.white))),
            ),
            ListTile(
              title: const Text('Home'),
              onTap: () {
                setState(() {
                  widget.route = "/";
                });
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Topics'),
              onTap: () {
                setState(() {
                  widget.route = "/topics";
                });
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Settings'),
              onTap: () {
                setState(() {
                  widget.route = "/settings";
                });
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text("Stastics"),
              onTap: () {
                setState(() {
                  widget.route = "/stastics";
                });
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      body: SafeArea(child:routes[widget.route]??const HomeView()),
      );
  }
}