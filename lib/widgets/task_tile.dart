import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/models/TaskActions.dart';

class TaskTile extends StatelessWidget {
  final String taskName;
  final bool isSelected;
  final int index;
  const TaskTile(this.taskName, this.isSelected, this.index, {super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        taskName,
        style: isSelected
            ? const TextStyle(decoration: TextDecoration.lineThrough)
            : null,
      ),
      trailing: Checkbox(
        value: isSelected,
        activeColor: Colors.lightBlueAccent,
        onChanged: (value) {
          context.read<TaskActions>().toggleDone(index);
        },
      ),
    );
  }
}
