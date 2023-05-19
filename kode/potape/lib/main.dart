import 'package:flutter/material.dart';
import '/Mainpage/mainpage.dart';
import 'AppBar/prov_appbar.dart';
import 'ai_test/ai.dart';
import "/pages/test.dart";
import "/data/pagedata.dart";
import 'package:provider/provider.dart';

void main() {
  runApp(
    /// Providers are above [MyApp] instead of inside it, so that tests
    /// can use [MyApp] while mocking the providers
    MultiProvider(
      providers: [
        ChangeNotifierProvider<Recom>(create: (_) => Recom()),
        ChangeNotifierProvider<PageData>(create: (_) => PageData()),
        ChangeNotifierProvider<Apbr>(create: (_) => Apbr()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primaryColor: Color.fromARGB(255, 146, 180, 236),
      ),
      home: const MainPage(),
    );
  }
}
