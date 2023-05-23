import 'package:flutter/material.dart';

AppBar tit_apbr(title_) {
  return AppBar(
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
