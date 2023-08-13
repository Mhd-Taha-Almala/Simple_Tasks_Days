import 'package:flutter/material.dart';

// ignore: camel_case_types
class adds extends StatelessWidget {
  const adds({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(30),
      child: Column(
        children: [
          const Text(
            "Add Task",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 18,
              color: Colors.black,
            ),
          ),
          const TextField(
            autofocus: true,
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 30,
          ),
          TextButton(
            onPressed: () {},
            style: TextButton.styleFrom(
              foregroundColor: Colors.white,
              backgroundColor: Colors.teal[400],
            ),
            child: const Text("Adds"),
          ),
        ],
      ),
    );
  }
}
