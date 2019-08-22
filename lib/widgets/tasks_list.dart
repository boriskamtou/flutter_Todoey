import 'package:flutter/material.dart';
import 'package:flutter_todoey/models/tasks_data.dart';
import 'package:flutter_todoey/widgets/task_tile.dart';
import 'package:provider/provider.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TasksData>(
      builder: (context, taskData, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            final task = taskData.tasks[index];
            return TaskTile(
                taskTitle: task.title,
                isChecked: task.isDone,
                onLongPressF: () {
                  taskData.deleteTask(index);
                },
                checkboxCallBack: (newVal) {
                  taskData.updateTask(task);
                });
          },
          itemCount: taskData.taskCount,
        );
      },
    );
  }
}
