import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tdoey/screens/tasks.dart';

import 'models/task_model.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) =>TaskData(),
      child: MaterialApp(home: TasksScreen()));
  }
}
