import 'package:flutter/material.dart';
import 'package:todo_app/models/todo.dart';

class ToDoList extends StatefulWidget {
  ToDoList({Key key}) : super(key: key);

  @override
  _ToDoListState createState() => _ToDoListState();
}

class _ToDoListState extends State<ToDoList> {
  List<ToDo> _todoList = [
    ToDo(1, 'asdf', 'asdf'),
  ];

  void clearList() {
    setState(() {
      _todoList = [];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text('Somethingg'),
    );
  }
}
