import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:flutter_todoey/models/task.dart';

class TasksData extends ChangeNotifier {
  List<Task> _tasks = [
    Task(title: 'Buy milk'),
    Task(title: 'Buy Eggs'),
    Task(title: 'Buy Chocolate'),
  ];

  UnmodifiableListView<Task> get tasks {
    return UnmodifiableListView(_tasks);
  }

  int get taskCount {
    return _tasks.length;
  }

  void addNewTasks(String newTaskTitle) {
    _tasks.add(Task(title: newTaskTitle));
    notifyListeners();
  }

  void updateTask(Task task){
    task.toggleDone();
    notifyListeners();
  }

  void deleteTask(int index){
    _tasks.removeAt(index);
    notifyListeners();
  }
}
