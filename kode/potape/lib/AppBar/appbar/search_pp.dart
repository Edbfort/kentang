import 'package:flutter/material.dart';

AppBar search_pp_apbr() {
  return AppBar(
    iconTheme: IconThemeData(color: Colors.white),
    backgroundColor: Colors.transparent,
    elevation: 0,
    title: Text("Home"),
    centerTitle: true,
    actions: [
      Padding(
        padding: EdgeInsets.only(right: 10),
        child: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.search,
          ),
        ),
      ),
    ],
  );
}
