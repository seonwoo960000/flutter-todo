import 'dart:math';

import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  final String title;

  const MainScreen({Key? key, required this.title}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  List todos = [];
  String input = "";

  @override
  void initState() {
    super.initState();
    todos.add("Item1");
    todos.add("Item2");
    todos.add("Item3");
    todos.add("Item4");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Todo"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
              context: context,
              builder: (BuildContext context) {
                return AlertDialog(
                    actionsPadding: EdgeInsets.all(16.0),
                    title: const Center(child: Text('Add Todo')),
                    content: SizedBox(
                      width: min(MediaQuery.of(context).size.width * 0.6, 720),
                      child: TextField(
                          onChanged: (String value) {
                            input = value;
                          },
                          autofocus: true,
                          onSubmitted: (_) {
                            FocusScope.of(context)
                                .unfocus(); // Remove focus from TextField
                            setState(() {
                              todos.add(input);
                            });
                            Navigator.pop(context); // Close the AlertDialog
                          }),
                    ),
                    actions: <Widget>[
                      FloatingActionButton(
                          onPressed: () {
                            setState(() {
                              todos.add(input);
                            });
                            Navigator.pop(context);
                          },
                          child: const Text("Add"))
                    ]);
              });
        },
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
      body: ListView.builder(
          itemCount: todos.length,
          itemBuilder: (BuildContext context, int index) {
            return Dismissible(
                key: Key(todos[index]),
                onDismissed: (direction) {
                  setState(() {
                    todos.removeAt(index);
                  });
                },
                child: Card(
                    child: ListTile(
                  title: Text(todos[index]),
                )));
          }),
    );
  }
}
