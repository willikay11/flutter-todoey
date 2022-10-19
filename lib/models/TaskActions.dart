import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:todoey/models/Task.dart';

class TaskActions with ChangeNotifier {
  final List<Task> _tasks = [
    Task(name: 'Buy Milk', isDone: false),
    Task(name: 'Buy Eggs', isDone: false),
    Task(name: 'Buy Bread', isDone: false),
  ];

  UnmodifiableListView<Task> get tasks {
    return UnmodifiableListView(_tasks);
  }

  void addTask(String value) {
    _tasks.add(Task(name: value, isDone: false));
    notifyListeners();
  }

  void toggleDone(int index) {
    _tasks[index].toggleDone();
    notifyListeners();
  }
}
