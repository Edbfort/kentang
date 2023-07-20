import 'dart:io';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'AppBar/prov_appbar.dart';
import 'Mainpage/mainpage.dart';
import '/sorter/sorter.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider<Sorter>(create: (_) => Sorter()),
        ChangeNotifierProvider<Apbr>(create: (_) => Apbr()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyCustomScrollBehavior extends MaterialScrollBehavior {
  // Override behavior methods and getters like dragDevices
  @override
  Set<PointerDeviceKind> get dragDevices => {
        PointerDeviceKind.touch,
        PointerDeviceKind.mouse,
        // etc.
      };
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    final newTextTheme = Theme.of(context).textTheme.apply(
          bodyColor: Colors.white,
          displayColor: Colors.white,
        );
    return MaterialApp(
      scrollBehavior: MyCustomScrollBehavior(),
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          textTheme: newTextTheme,
          brightness: Brightness.dark,
          dividerColor: Colors.black26),
      home: MainPage(),
    );
  }
}
