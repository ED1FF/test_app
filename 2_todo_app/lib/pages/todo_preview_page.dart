import 'package:flutter/material.dart';
import 'package:todo_app/components/todo_list_item.dart';
import 'package:todo_app/models/todo.dart';

class ToDoPreviewPage extends StatelessWidget {
  final ToDo todo;
  final Function completeToDo;
  const ToDoPreviewPage(this.todo, this.completeToDo);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text(todo.title),
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Text(todo.body),
        ),
      ),
    );
  }
}
