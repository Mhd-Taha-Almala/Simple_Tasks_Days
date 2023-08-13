// ignore_for_file: file_names

import 'package:flutter/material.dart';

import '../widget/Tasks.dart';
import 'adds.dart';

class ToToday extends StatelessWidget {
  const ToToday({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            isScrollControlled: true,
            context: context,
            builder: (context) => SingleChildScrollView(
                child: Container(
                    padding: EdgeInsets.only(
                        bottom: MediaQuery.of(context).viewInsets.bottom),
                    child: const adds())),
          );
        },
        backgroundColor: Colors.indigo[400],
        child: const Icon(Icons.add),
      ),
      backgroundColor: Colors.teal[400],
      body: Container(
        padding: const EdgeInsets.only(
          top: 60,
          bottom: 80,
          left: 20,
          right: 20,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                const Icon(
                  Icons.playlist_add_check,
                  size: 40,
                ),
                const SizedBox(
                  width: 20,
                ),
                const Text(
                  "To Today",
                  style: TextStyle(
                    fontSize: 40,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            ),
            const Text(
              "3 Tasks",
              style: TextStyle(
                fontSize: 18,
                color: Colors.white,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                child: const Tasks(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
