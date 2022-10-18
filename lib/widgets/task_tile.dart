import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final String taskName;
  final bool isSelected;
  final Function checkboxCb;
  const TaskTile(this.taskName, this.isSelected, this.checkboxCb, {super.key});

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
          checkboxCb(value);
        },
      ),
    );
  }
}
