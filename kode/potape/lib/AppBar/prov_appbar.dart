import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

/// UNTUK HAL APPBAR KERJAKAN DISINI

class Apbr extends ChangeNotifier {
  /// <- AppBar Template

  AppBar search_pp(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      leading: IconButton(
        icon: Icon(Icons.menu),
        onPressed: () {
          Scaffold.of(context).openDrawer();
        },
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.search),
        ),
        SizedBox(width: 8),
        CircleAvatar(
          radius: 20,
          backgroundImage: AssetImage('assets/profile_pic.png'),
        ),
      ],
    );
  }

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
}
