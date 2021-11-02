import 'package:flutter/material.dart';
import 'package:task_management/Pages/Welcome/home_page.dart';

void main() {
  runApp(TaskManagerApp());
}

class TaskManagerApp extends StatefulWidget {
  const TaskManagerApp({Key? key}) : super(key: key);

  @override
  _TaskManagerAppState createState() => _TaskManagerAppState();
}

class _TaskManagerAppState extends State<TaskManagerApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Task Manager',
      theme: ThemeData(
        buttonColor: Color(0xFF1C50A0),
        primaryColor: Colors.white,
      ),
      home: HomePage(),
    );
  }
}
