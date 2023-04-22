import 'package:flutter/material.dart';
import 'package:pertemuan4/Getting%20Started/gettingstarted.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAappState();
}

class _MyAappState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Tugas Kelompok",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: Colors.blue),
      home: const GStarted(),
    );
  }
}