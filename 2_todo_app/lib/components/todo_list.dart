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
    ToDo(
      1,
      'asdf asdfasdf',
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
      false,
    ),
    ToDo(
      2,
      'adipiscing elit, sed',
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
      false,
    ),
    ToDo(
      3,
      'dolor sit amet',
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
      false,
    ),
  ];

  void removeItem(todo) {
    setState(() {
      final _itemIndex = _todoList.indexOf(todo);
      _todoList[_itemIndex] =
          ToDo(todo.id, todo.title, todo.body, !todo.complete);
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
