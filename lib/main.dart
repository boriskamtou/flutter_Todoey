import 'package:flutter/material.dart';
import 'package:flutter_todoey/models/tasks_data.dart';
import 'package:flutter_todoey/screens/tasks_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      builder: (context) => TasksData(),
      child: MaterialApp(
        home: TasksScreen(),
      ),
    );
  }
}
