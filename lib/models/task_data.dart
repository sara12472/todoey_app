import 'package:flutter/cupertino.dart';
import 'task.dart';
import 'package:collection/collection.dart';

class TaskData extends ChangeNotifier {
  final List<Task> _taskList = [
    Task('Buy egg'),
    Task('Buy fruits'),
    Task('Buy vegetables'),
  ];

  UnmodifiableListView<Task> get tasks => UnmodifiableListView(_taskList);

  int get taskCount => _taskList.length;

  void addTask(String newTaskTitle) {
    final task = Task(newTaskTitle);
    _taskList.add(task);
    notifyListeners();
  }

  void deleteTask(Task task) {
    _taskList.remove(task);
    notifyListeners();
  }

  void updateTask(Task task) {
    task.toggleDone();
    notifyListeners();
  }
}
