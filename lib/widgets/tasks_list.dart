import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey_app/models/task_data.dart';
import '../models/task.dart';
import 'list_tiles.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            final task = taskData.tasks[index];
            return TaskTiles(
              taskTitle: task.name,
              isChecked: task.isDone,
              toggleCheckBoxState: (value) {
                taskData.updateTask(task);
              },
              deleteTask: () {
                taskData.deleteTask(task);
              },
              deleteButton: () {
                taskData.deleteTask(task);
              },
            );
          },
          itemCount: taskData.taskCount,
        );
      },
    );
  }
}
