import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoeyflutter/models/task_data.dart';
import 'package:todoeyflutter/widgets/task_tile.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, value, child) => ListView.builder(
        itemBuilder: (context, index) {
          return TaskTile(
            title: value.tasks[index].taskTitle ?? 'Default value',
            isChecked: value.tasks[index].isDone,
            checkboxCallback: (newValue) {
              value.updateTask(value.tasks[index]);
            },
            deleteCallback: () {
              value.deleteTask(index);
            },
          );
        },
        itemCount: value.taskCount,
      ),
    );
  }
}
