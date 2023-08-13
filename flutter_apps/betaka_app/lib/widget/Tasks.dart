// ignore_for_file: file_names

import 'package:flutter/material.dart';

import '../moudle/Task.dart';
import 'Tasklist.dart';

class Tasks extends StatefulWidget {
  const Tasks({
    Key? key,
  }) : super(key: key);

  @override
  State<Tasks> createState() => _TasksState();
}

class _TasksState extends State<Tasks> {
  List<Task> tasks = [
    Task(
      name: "Go Shopping",
    ),
    Task(
      name: "Buy Gift",
    ),
    Task(
      name: "Repair a Car",
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: tasks.length,
        itemBuilder: ((context, index) {
          return Tasklist(
              isCheck: tasks[index].IsDone,
              Tasked: tasks[index].name,
              boxchange: (newvalue) {
                setState(() {
                  tasks[index].changeDone();
                });
              });
        }));
  }
}
// return ListView(
    // children: [
    // Tasklist(
    // Tasked: tasks[0].name,
    //isCheck: tasks[0].IsDone,
    //),
    //Tasklist(
    //Tasked: tasks[1].name,
    //isCheck: tasks[1].IsDone,
    //),
    //Tasklist(
    //Tasked: tasks[2].name,
    //isCheck: tasks[2].IsDone,
    //),
    //],
    //);