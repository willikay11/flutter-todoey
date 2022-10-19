import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/models/Task.dart';
import 'package:todoey/widgets/task_tile.dart';

import '../models/TaskActions.dart';

class TaskList extends StatelessWidget {
  const TaskList({super.key});

  @override
  Widget build(BuildContext context) {
    List<Task> tasks = context.watch<TaskActions>().tasks;

    return ListView.builder(
      itemBuilder: (context, index) {
        return TaskTile(tasks[index].name, tasks[index].isDone, index);
      },
      itemCount: tasks.length,
    );
  }
}

// class TaskList extends StatelessWidget {
//   const TaskList({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return ListView(
//       padding: const EdgeInsets.only(top: 30.0, left: 20.0, right: 20.0),
//       children: [
//         const TaskTile('Buy Milk', false),
//         const TaskTile('Buy Eggs', false),
//         ListTile(
//           title: const Text(
//             'Buy bread',
//             style: TextStyle(decoration: TextDecoration.lineThrough),
//           ),
//           trailing: Checkbox(
//               value: false,
//               activeColor: Colors.lightBlueAccent,
//               onChanged: (value) {}),
//         ),
//       ],
//     );
//   }
// }
