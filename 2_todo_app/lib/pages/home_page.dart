import 'package:flutter/material.dart';
import 'package:todo_app/components/todo_list.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text('ToDoApp'),
        ),
        body: ToDoList(),
      ),
    );
  }
}
