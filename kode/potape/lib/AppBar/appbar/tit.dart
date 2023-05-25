import 'package:flutter/material.dart';

AppBar tit_apbr(title_) {
  return AppBar(
    iconTheme: IconThemeData(color: Colors.black),
    centerTitle: true,
    backgroundColor: Colors.transparent,
    elevation: 0,
    title: Text(
      title_.toString(),
      textAlign: TextAlign.center,
      style: TextStyle(color: Colors.black),
    ),
  );
}
