import 'package:flutter/material.dart';
import 'package:tdoey/models/task.dart';
import 'package:tdoey/widgets/tasks_tile.dart';

class TasksList extends StatefulWidget {
  @override
  _TasksListState createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  List<Task> tasks = [
    Task(name: 'Buy chocolate'),
    Task(name: 'Buy Pizza'),
    Task(name: 'Buy Burger'),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: tasks.length,
        itemBuilder: (context, index) {
          return TaskTile(
              taskTitle: tasks[index].name,
              isChecked: tasks[index].isDone,
              checkboxCallback: (checkboxState) {
                setState(() {
                  tasks[index].toggleDone();
                });
              });
        });

    // return ListView(children: <Widget>[
    //   TaskTile(taskTitle: tasks[0].name, isChecked: tasks[0].isDone),
    //   TaskTile(taskTitle: tasks[1].name, isChecked: tasks[1].isDone),
    //   TaskTile(taskTitle: tasks[2].name, isChecked: tasks[2].isDone),
    // ]);
  }
}
