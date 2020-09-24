import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
// import 'package:tdoey/models/task.dart';
import 'package:tdoey/models/task_model.dart';
import 'package:tdoey/widgets/tasks_tile.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return ListView.builder(
            // itemCount: widget.tasks.length,
            itemCount:taskData.taskCount,
            itemBuilder: (context, index) {
              return TaskTile(
                  taskTitle: taskData.tasks[index].name,
                  // taskTitle: Provider.of<TaskData>(context).tasks[index].name,
                  isChecked: taskData.tasks[index].isDone,
                  checkboxCallback: (checkboxState) {
                    // setState(() {
                    //   widget.tasks[index].toggleDone();
                    // });
                  });
            });
      },
    );

    // return ListView(children: <Widget>[
    //   TaskTile(taskTitle: tasks[0].name, isChecked: tasks[0].isDone),
    //   TaskTile(taskTitle: tasks[1].name, isChecked: tasks[1].isDone),
    //   TaskTile(taskTitle: tasks[2].name, isChecked: tasks[2].isDone),
    // ]);
  }
}
