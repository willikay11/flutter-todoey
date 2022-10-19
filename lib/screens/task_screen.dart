import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/models/TaskActions.dart';
import 'package:todoey/screens/add_task_screen.dart';
import 'package:todoey/widgets/task_list.dart';

class TasksScreen extends StatelessWidget {
  const TasksScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.lightBlueAccent,
          child: const Icon(Icons.add),
          onPressed: () {
            showModalBottomSheet(
              context: context,
              builder: (context) => const AddTaskScreen(),
            );
          }),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.only(
                top: 60.0, left: 30.0, right: 30.0, bottom: 30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 30.0,
                    child: Icon(
                      Icons.list,
                      size: 30.0,
                      color: Colors.lightBlueAccent,
                    )),
                const SizedBox(height: 10.0),
                const Text(
                  'Todoey',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 40.0,
                      fontWeight: FontWeight.w700),
                ),
                Text(
                  '${context.watch<TaskActions>().tasks.length} Tasks',
                  style: const TextStyle(fontSize: 18.0, color: Colors.white),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              height: 300.0,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20.0),
                  topRight: Radius.circular(20.0),
                ),
              ),
              child: const TaskList(),
            ),
          ),
        ],
      ),
    );
  }
}
