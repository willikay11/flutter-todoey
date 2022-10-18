import 'package:flutter/material.dart';
import 'package:todoey/models/Task.dart';
import 'package:todoey/widgets/task_tile.dart';

class TaskList extends StatelessWidget {
  final List<Task> tasks;
  final Function checkboxCb;
  const TaskList(this.tasks, this.checkboxCb, {super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return TaskTile(tasks[index].name, tasks[index].isDone, (value) {
          checkboxCb(index);
        });
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
