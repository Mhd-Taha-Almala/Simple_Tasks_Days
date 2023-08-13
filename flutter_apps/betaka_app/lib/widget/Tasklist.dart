// ignore_for_file: file_names

import 'package:flutter/material.dart';

class Tasklist extends StatelessWidget {
  final bool isCheck;
  // ignore: non_constant_identifier_names
  final String Tasked;
  final void Function(bool?) boxchange;
  const Tasklist(
      // ignore: non_constant_identifier_names
      {required this.isCheck,
      required this.Tasked,
      required this.boxchange});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        Tasked,
        style:
            TextStyle(decoration: isCheck ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(
        activeColor: Colors.teal[300],
        value: isCheck,
        onChanged: boxchange,
      ),
    );
  }
}
