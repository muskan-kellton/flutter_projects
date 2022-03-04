import 'package:flutter/foundation.dart';
import 'package:flutter_projects/todoey_app/models/tasks.dart';

class TaskData extends ChangeNotifier {
  final List<Tasks> tasks = [
    Tasks(name: 'Buy milk'),
    Tasks(name: 'Buy bread'),
    Tasks(name: 'Buy egg'),
  ];

  int get taskCount {
    return tasks.length;
  }

  void addTask(String newTaskTitle){
    final task = Tasks(name: newTaskTitle);
    tasks.add(task);
    notifyListeners(); // this is important to make changes/ update the widgets that are listening
  }

  void checkTask(Tasks tasks){
    tasks.toggleDone();
    notifyListeners();
  }

  void deleteTask(Tasks task){
    tasks.remove(task);
    notifyListeners();
  }
}
