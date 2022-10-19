import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/models/TaskActions.dart';

class AddTaskScreen extends StatelessWidget {
  const AddTaskScreen({super.key});

  @override
  Widget build(BuildContext context) {
    String newTaskTitle = '';

    return Container(
      color: const Color(0xff757575),
      child: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 20.0, right: 20.0, top: 10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Text(
                'Add Task',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 30.0,
                  color: Colors.lightBlueAccent,
                ),
              ),
              TextField(
                autofocus: true,
                textAlign: TextAlign.center,
                onChanged: (value) {
                  newTaskTitle = value;
                },
                style: const TextStyle(
                  color: Colors.lightBlueAccent,
                ),
              ),
              const SizedBox(height: 20.0),
              MaterialButton(
                onPressed: () {
                  context.read<TaskActions>().addTask(newTaskTitle);
                  Navigator.pop(context);
                },
                color: Colors.lightBlueAccent,
                height: 50.0,
                child: const Text(
                  'Add',
                  style: TextStyle(color: Colors.white),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
