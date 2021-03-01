import 'package:flutter/material.dart';
import 'package:todo_app/models/todo.dart';

class ToDoListItem extends StatelessWidget {
  final ToDo todo;
  final Function deleteToDo;
  const ToDoListItem(this.todo, this.deleteToDo);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: deleteToDo,
      child: Container(
        height: 50,
        child: Text(todo.title),
      ),
    );
  }
}
