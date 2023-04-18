import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:grouped_list/grouped_list.dart';

void main() {
  runApp(const TodoApp());
}

class TodoApp extends StatelessWidget {
  const TodoApp({super.key});

  static const int primaryColor = 0xFFE04C3C;

  @override
  Widget build(BuildContext context) {
    const MaterialColor myColor = MaterialColor(primaryColor, <int, Color>{
      50: Color(primaryColor),
      100: Color(primaryColor),
      200: Color(primaryColor),
      300: Color(primaryColor),
      400: Color(primaryColor),
      500: Color(primaryColor),
      600: Color(primaryColor),
      700: Color(primaryColor),
      800: Color(primaryColor),
      900: Color(primaryColor),
    });

    return MaterialApp(
      title: 'TodoGPT',
      theme: ThemeData(
        primarySwatch: myColor,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const MyHomePage(title: 'TodoGPT')
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;

  const MyHomePage({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Welcome to TodoGPT!',
              style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {},
              child: const Text('Get Started'),
            ),
          ],
        ),
      ),
    );
  }
}