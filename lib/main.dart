import 'package:flutter/material.dart';
import 'package:todo/ui/screens/home/calendar_screen.dart';
import 'package:todo/ui/theme/colors.dart';

void main() {
  runApp(const TodoApp());
}

class TodoApp extends StatelessWidget {
  const TodoApp({super.key});

  static const int primaryColor = 0xFFE04C3C;

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: 'TodoGPT',
      theme: ThemeData(
        primarySwatch: todoPrimaryColor,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const CalendarScreen()
    );
  }
}
