import 'package:flutter/material.dart';
import 'package:todo_app/models/todo.dart';
import 'package:todo_app/pages/todo_preview_page.dart';

class ToDoListItem extends StatelessWidget {
  final ToDo todo;
  final Function deleteToDo;
  const ToDoListItem(this.todo, this.deleteToDo);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onHorizontalDragEnd: (details) {
        if (details.primaryVelocity > 0 || details.primaryVelocity < 0) {
          deleteToDo();
        }
      },
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => ToDoPreviewPage(todo, deleteToDo)),
        );
      },
      child: Container(
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(
              color: Colors.black26,
            ),
          ),
        ),
        padding: EdgeInsets.all(20.0),
        child: ToDoListItemContent(todo),
      ),
    );
  }
}

class ToDoListItemContent extends StatelessWidget {
  final ToDo todo;
  const ToDoListItemContent(this.todo);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            todo.title,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
              decoration: todo.complete ? TextDecoration.lineThrough : null,
              color: todo.complete ? Colors.white38 : Colors.white,
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Text(
            todo.body,
            style: TextStyle(
              decoration: todo.complete ? TextDecoration.lineThrough : null,
              color: todo.complete ? Colors.white38 : Colors.white,
            ),
          )
        ],
      ),
    );
  }
}
