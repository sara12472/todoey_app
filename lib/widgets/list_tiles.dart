import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey_app/models/task_data.dart';

class TaskTiles extends StatelessWidget {
  late final bool isChecked;
  late final String taskTitle;
  final void Function(bool?) toggleCheckBoxState;
  final VoidCallback deleteTask;
  final VoidCallback deleteButton;
  TaskTiles({
    required this.taskTitle,
    required this.isChecked,
    required this.toggleCheckBoxState,
    required this.deleteTask,
    required this.deleteButton,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        taskTitle,
        style: TextStyle(
          decoration: isChecked ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Checkbox(
            activeColor: Colors.lightBlueAccent,
            value: isChecked,
            onChanged: toggleCheckBoxState,
          ),
          IconButton(
            onPressed: deleteButton,
            icon: Icon(Icons.delete, color: Colors.lightBlueAccent),
          ),
        ],
      ),
      onLongPress: deleteTask,
    );
  }
}

/*void checkBoxCallBack(bool? value) {
  setState(() {
    isChecked = value ?? false;
  });
}*/
