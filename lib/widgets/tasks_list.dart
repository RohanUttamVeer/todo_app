import 'package:flutter/material.dart';
import 'package:todo_app/widgets/task_tile.dart';
import 'package:provider/provider.dart';
import 'package:todo_app/models/task_data.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return ListView.builder(
          itemBuilder: (contex, index) {
            final taskIndex = taskData.tasks[index];
            return TasksTile(
              isChecked: taskIndex.isDone,
              taskTile: taskIndex.name,
              checkBoxCallBack: (checkboxState) {
                taskData.updateTask(taskIndex);
              },
              longPressCallBack: () {
                taskData.deleteTask(taskIndex);
              },
            );
          },
          itemCount: taskData.taskCount,
        );
      },
    );
  }
}
