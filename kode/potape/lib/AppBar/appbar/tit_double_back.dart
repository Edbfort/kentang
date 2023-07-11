import 'package:flutter/material.dart';

AppBar tit_double_back_apbr(title_, context) {
  return AppBar(
    iconTheme: IconThemeData(color: Colors.white),
    leading: BackButton(
      onPressed: () {
        Navigator.maybePop(context);
        Navigator.maybePop(context);
      },
    ),
    backgroundColor: Colors.transparent,
    elevation: 0,
    title: Text(
      title_.toString(),
      textAlign: TextAlign.center,
      style: TextStyle(fontWeight: FontWeight.bold),
    ),
  );
}
