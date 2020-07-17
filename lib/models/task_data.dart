import 'dart:collection';

import 'package:flutter/foundation.dart';

import 'task.dart';
import 'task.dart';

class TaskData extends ChangeNotifier {

  List<Task> _tasks = [
    Task(taskTitle: 'Buy bread'),
    Task(taskTitle: 'Buy eggs'),
    Task(taskTitle: 'Buy milk'),
    Task(taskTitle: 'Buy milk'),
    Task(taskTitle: 'Buy milk'),
  ];

  UnmodifiableListView<Task> get tasks => UnmodifiableListView(_tasks);

  int get taskCount => _tasks.length;

  void addTask(String taskTitle) {
    Task newTask = Task(taskTitle: taskTitle);
    _tasks.add(newTask);
    notifyListeners();
  }

  void updateTask(Task task) {
    task.toggle();
    notifyListeners();
  }

  void deleteTask(int index) {
    _tasks.removeAt(index);
    notifyListeners();
  }

}