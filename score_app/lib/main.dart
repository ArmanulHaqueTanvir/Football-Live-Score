import 'package:flutter/material.dart';
import 'package:score_app/api_manager.dart';
import 'package:score_app/page_body.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SoccerApp(),
    );
  }
}

class SoccerApp extends StatefulWidget {
  const SoccerApp({super.key});

  @override
  State<SoccerApp> createState() => _SoccerAppState();
}

class _SoccerAppState extends State<SoccerApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFFAFAFA),
        elevation: 0,
        title: const Text(
          "SOCCER BOARD",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: FutureBuilder(
        future: SoccerApi()
            .getAllMatches(), // here we will call our getData() method
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return PageBody(snapshot.data);
          } else {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
        }, // here we will build out layout
      ),
    );
  }
}
