import 'package:flutter/material.dart';

class TodoItem extends StatelessWidget {
  TodoItem({@required this.text});

  final text;

  @override
  Widget build(BuildContext context) {
    return Card(
        child: SizedBox(
          width: double.infinity,
          child: Container(
            padding: EdgeInsets.all(20),
            child: Text(text),
          ),
        ),
        elevation: 5);
  }
}
