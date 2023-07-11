import 'package:flutter/material.dart';

AppBar tit_back_edit_apbr(title_, itemName) {
  return AppBar(
    iconTheme: IconThemeData(color: Colors.white),
    backgroundColor: Colors.transparent,
    elevation: 0,
    title: Text(
      itemName.toString(),
      textAlign: TextAlign.center,
      style: TextStyle(fontWeight: FontWeight.bold),
    ),
    actions: [IconButton(onPressed: () {}, icon: Icon(Icons.edit))],
  );
}
