import 'package:flutter/material.dart';
import './todoitem.dart';

class TodoList extends StatefulWidget {
  TodoList({@required this.todos});

  final List<String> todos;

  @override
  State<StatefulWidget> createState() {
    return _TodoListState();
  }
}

class _TodoListState extends State<TodoList> {
  List<String> _todos = [];

  final controller = TextEditingController();

  void initState() {
    _todos = widget.todos;
    super.initState();
  }

  buildTodos() {
    return _todos.map((todo) => TodoItem(text: todo)).toList();
  }

  renderAddButton() {
    return RaisedButton(
        child: Text('Add'),
        onPressed: () {
          setState(() {
            _todos.add(controller.text);
            controller.text = '';
          });
        });
  }

  renderInputField() {
    return TextField(
      decoration: InputDecoration(
        border: InputBorder.none,
        hintText: 'Add new item',
      ),
      controller: this.controller,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(10),
        child: ListView(children: [
          this.renderAddButton(),
          this.renderInputField(),
          Column(children: this.buildTodos())
        ]));
  }
}
