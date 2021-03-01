import 'package:flutter/material.dart';
import 'package:todo_app/components/todo_list.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(brightness: Brightness.dark),
      home: Scaffold(
        appBar: AppBar(
          title: Text('ToDoApp'),
        ),
        body: ToDoList(),
      ),
    );
  }
}
