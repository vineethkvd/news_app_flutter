import 'package:flutter/material.dart';
import 'package:news_app_flutter/view/science_screen.dart';
import 'package:news_app_flutter/view/technology_screen.dart';

import 'all_news_screen.dart';
import 'general_screen.dart';
import 'health_screen.dart';



class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: const Text(
            "News App",
            style: TextStyle(
                fontSize: 30, fontWeight: FontWeight.bold, color: Colors.black),
          ),
          backgroundColor: Colors.transparent,
          elevation: 0,
          bottom: TabBar(
            indicator: BoxDecoration(
                borderRadius: BorderRadius.circular(35),
                color: const Color.fromARGB(255, 226, 223, 223)),
            isScrollable: true,
            tabs: const [
              Tab(text: "All"),
              Tab(text: "General"),
              Tab(text: "Health"),
              Tab(text: "Technology"),
              Tab(text: "Science"),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            AllNewsScreen(),
            GeneralScreen(),
            HealthScreen(),
            TechnologyScreen(),
            ScienceScreen(),
          ],
        ),
      ),
    );
  }
}