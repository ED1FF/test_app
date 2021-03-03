import 'package:flutter/material.dart';
import 'package:todo_app/components/todo_list_item.dart';
import 'package:todo_app/models/todo.dart';

class ToDoList extends StatefulWidget {
  ToDoList({Key key}) : super(key: key);

  @override
  _ToDoListState createState() => _ToDoListState();
}

class _ToDoListState extends State<ToDoList> {
  List<ToDo> _todoList = [
    ToDo(1, 'asdf', 'asdf', false),
    ToDo(2, 'asdfas', 'asdf', false),
    ToDo(3, 'asdf', 'asdf', false),
  ];

  void removeItem(todo) {
    setState(() {
      _todoList.remove(todo);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: _todoList
            .map((i) => ToDoListItem(i, () {
                  removeItem(i);
                }))
            .toList(),
      ),
    );
  }
}
