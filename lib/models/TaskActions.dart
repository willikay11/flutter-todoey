import 'package:flutter/material.dart';
import 'package:todoey/models/Task.dart';

class TaskActions with ChangeNotifier {
  List<Task> tasks = [
    Task(name: 'Buy Milk', isDone: false),
    Task(name: 'Buy Eggs', isDone: false),
    Task(name: 'Buy Bread', isDone: false),
  ];

  void addTask(String value) {
    tasks.add(Task(name: value, isDone: false));
    notifyListeners();
  }

  void toggleDone(int index) {
    tasks[index].toggleDone();
    notifyListeners();
  }
}
