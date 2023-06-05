import 'package:flutter/material.dart';

/// Flutter code sample for [FutureBuilder].

class FutureBuilderExampleApp extends StatelessWidget {
  const FutureBuilderExampleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: FutureBuilderExample(),
    );
  }
}

class FutureBuilderExample extends StatefulWidget {
  const FutureBuilderExample({super.key});

  @override
  State<FutureBuilderExample> createState() => _FutureBuilderExampleState();
}

class _FutureBuilderExampleState extends State<FutureBuilderExample> {
  var data = ["a", "b", "c"];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: PopupMenuButton(
        icon: Icon(Icons.abc),
        itemBuilder: (context) => <PopupMenuEntry>[
          for (var a in data)
            PopupMenuItem(
                child: ListTile(
              title: Text(a.toString()),
            ))
        ],
      ),
    );
  }
}
