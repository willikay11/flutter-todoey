import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/models/TaskActions.dart';
import 'package:todoey/screens/task_screen.dart';

void main() {
  runApp(MultiProvider(
    providers: [ChangeNotifierProvider(create: (_) => TaskActions())],
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: TasksScreen(),
    );
  }
}
