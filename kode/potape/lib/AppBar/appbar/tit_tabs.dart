import 'package:flutter/material.dart';

AppBar tit_tabs_apbr(title_, tabs) {
  return AppBar(
    centerTitle: true,
    backgroundColor: Colors.transparent,
    elevation: 0,
    title: Text(
      title_.toString(),
      textAlign: TextAlign.center,
      style: TextStyle(color: Colors.black),
    ),
    bottom: TabBar(indicatorColor: Color(0xFF92B4EC), tabs: [
      for (String i in tabs.toString().split(","))
        Tab(
          text: i,

          /// masih perlu di buat button untuk mengganti current page di child
        )
    ]),
  );
}
