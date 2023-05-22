import 'package:flutter/material.dart';
import 'AppBar/prov_appbar.dart';
import 'Mainpage/mainpage.dart';
import 'ai_test/ai.dart';
import "/pages/test.dart";
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider<Recom>(create: (_) => Recom()),
        ChangeNotifierProvider<Apbr>(create: (_) => Apbr()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color.fromARGB(255, 146, 180, 236),
      ),
      home: const MainPage(),
    );
  }
}
