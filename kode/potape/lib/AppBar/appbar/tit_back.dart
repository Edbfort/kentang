import 'package:flutter/material.dart';

AppBar tit_back_apbr(
  title_,
) {
  return AppBar(
    iconTheme: IconThemeData(color: Colors.white),
    leading: BackButton(),
    backgroundColor: Colors.transparent,
    elevation: 0,
    title: Text(
      title_.toString(),
      textAlign: TextAlign.center,
      style: TextStyle(fontWeight: FontWeight.bold),
    ),
  );
}
