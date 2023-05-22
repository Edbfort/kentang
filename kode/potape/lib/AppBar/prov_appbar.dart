import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

/// UNTUK HAL APPBAR KERJAKAN DISINI

class Apbr extends ChangeNotifier {
  /// <- Data

  Map<String, String> current_page = {
    "appbar": "search_pp",
    "drawer": "base_drawer",
    "body": "shop",
    "btmnav": "base_btmnav",
    "btm_index": "1",
    "drawer_page": "",
    "title": "Shop"
  };

  Map<String, Map<String, String>> _pages = {
    "shop": {
      "appbar": "search_pp",
      "drawer": "base_drawer",
      "body": "shop",
      "btmnav": "base_btmnav",
      "btm_index": "1",
      "drawer_page": "",
      "title": "Shop"
    },
    "home": {
      "appbar": "tit",
      "drawer": "base_drawer",
      "body": "home",
      "btmnav": "base_btmnav",
      "btm_index": "0",
      "drawer_page": "",
      "title": "Home"
    },
    "cart": {
      "appbar": "tit",
      "drawer": "base_drawer",
      "body": "cart",
      "btmnav": "base_btmnav",
      "btm_index": "2",
      "drawer_page": "",
      "title": "Cart"
    },
    "history": {
      "appbar": "tit",
      "drawer": "base_drawer",
      "body": "history",
      "btmnav": "base_btmnav",
      "btm_index": "3",
      "drawer_page": "",
      "title": "History"
    },
  };

  void _onbtmtap(index) {
    Map<int, String> btm_pages = {
      0: "home",
      1: "shop",
      2: "cart",
      3: "history",
    };
    current_page = _pages[btm_pages[index]]!;
    notifyListeners();
  }

  /// Data ->

  /// <- AppBar Template

  /// Appbar with search and profile picture
  AppBar search_pp() {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
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

  /// Appbar with title in center
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

  /// <- Drawer Template

  Drawer base_drawer(title) {
    return Drawer(
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [],
        ),
      ),
    );
  }

  /// Drawer Template ->

  /// <- Body Template

  ///  Body Template ->

  /// <- Bottom Navigation Template

  BottomNavigationBar base_btmnav(btm_index) {
    return BottomNavigationBar(
      backgroundColor: Color(0xFF92B4EC),
      type: BottomNavigationBarType.fixed,
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.store),
          label: 'Shop',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.shopping_basket),
          label: 'Cart',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.history),
          label: 'History',
        ),
      ],
      currentIndex: btm_index,
      onTap: _onbtmtap,
    );
  }

  BottomNavigationBar btmnav_unselec(btm_index) {
    return BottomNavigationBar(
      backgroundColor: Color(0xFF92B4EC),
      selectedItemColor: Color(0xFF43536C),
      type: BottomNavigationBarType.fixed,
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.store),
          label: 'Shop',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.shopping_basket),
          label: 'Cart',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.history),
          label: 'History',
        ),
      ],
      currentIndex: btm_index,
      onTap: _onbtmtap,
    );
  }

  /// Bottom Navigation Template ->
}
