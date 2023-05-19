import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Apbr extends ChangeNotifier {
  /// <- AppBar Template

  AppBar tit(title_) {
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

  /// AppBar Template ->

  /// <- AppBar get

  AppBar search_pp() {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      actions: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Text(
                'Hello, User  ',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
              CircleAvatar(
                radius: 20,
                backgroundImage: AssetImage('assets/profile_pic.png'),
              ),
            ],
          ),
        ),
      ],
    );
  }

  /// AppBar get ->

  /// <- AppBar Data

  /// AppBar Data ->
}
