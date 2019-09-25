import 'package:flutter/material.dart';
import './todolist.dart';

main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
          appBar:
              AppBar(title: Text('Todo List'), backgroundColor: Colors.black54),
          body: TodoList(todos: ['Einkaufen', 'Klavier spielen'],)
        ),
    );
  }
}
