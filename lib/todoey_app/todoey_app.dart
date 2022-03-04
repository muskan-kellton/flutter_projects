import 'package:flutter/material.dart';
import 'package:flutter_projects/todoey_app/models/task_data.dart';
import 'package:flutter_projects/todoey_app/screens/tasks_screen.dart';
import 'package:provider/provider.dart';

class TodoeyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => TaskData(),
      child: MaterialApp(
        home: TasksScreen(),
      ),
    );
  }
}
