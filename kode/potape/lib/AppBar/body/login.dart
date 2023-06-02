import 'package:flutter/material.dart';

Container gettingstarted_body() {
  return Container(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [Text("Email"), TextField(), Text("Password"), TextField()],
        )),
        Container(),
      ],
    ),
  );
}
