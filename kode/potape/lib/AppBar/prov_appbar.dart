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
    "title": "Shop",
    "tab_length": "0",
  };

  Map<String, Map<String, String>> _pages = {
    "shop": {
      "appbar": "search_pp",
      "drawer": "base_drawer",
      "body": "shop",
      "btmnav": "base_btmnav",
      "btm_index": "1",
      "drawer_page": "",
      "title": "Shop",
      "tab_length": "0",
    },
    "home": {
      "appbar": "tit",
      "drawer": "base_drawer",
      "body": "home",
      "btmnav": "base_btmnav",
      "btm_index": "0",
      "drawer_page": "",
      "title": "Home",
      "tab_length": "0",
    },
    "cart": {
      "appbar": "tit",
      "drawer": "base_drawer",
      "body": "cart",
      "btmnav": "base_btmnav",
      "btm_index": "2",
      "drawer_page": "",
      "title": "Cart",
      "tab_length": "0",
    },
    "ongoing": {
      "appbar": "tit_tabs",
      "drawer": "base_drawer",
      "body": "cart",
      "btmnav": "base_btmnav",
      "btm_index": "3",
      "drawer_page": "",
      "title": "Purchase",
      "tab_length": "2",
      "tabs": "Ongoing,Done",
    },
    "done": {
      "appbar": "tit_tabs",
      "drawer": "base_drawer",
      "body": "done",
      "btmnav": "base_btmnav",
      "btm_index": "3",
      "drawer_page": "",
      "title": "Purchase",
      "tab_length": "2",
      "tabs": "Ongoing,Done",
    },
    "profile": {
      "appbar": "tit",
      "drawer": "base_drawer",
      "body": "profile",
      "btmnav": "",
      "btm_index": "0",
      "drawer_page": "",
      "title": "Profile",
      "tab_length": "0",
    },
    "dashboard": {
      "appbar": "tit",
      "drawer": "base_drawer",
      "body": "dashboard",
      "btmnav": "",
      "btm_index": "0",
      "drawer_page": "dashboard",
      "title": "Dashboard",
      "tab_length": "0",
    },
  };

  void _onbtmtap(index) {
    Map<int, String> btm_pages = {
      0: "home",
      1: "shop",
      2: "cart",
      3: "ongoing",
    };
    current_page = _pages[btm_pages[index]]!;
    notifyListeners();
  }

  void _ondrawertap(index) {
    Map<int, String> drawer_pages = {
      0: "home",
      1: "shop",
      2: "cart",
      3: "ongoing",
      4: "profile",
      5: "dashboard",
      6: "logout",
    };
    current_page = _pages[drawer_pages[index]]!;
    notifyListeners();
  }

  List drawer_pages = [
    "home",
    "shop",
    "cart",
    "purchase",
    "profile",
    "dashboard",
    "logout",
  ];

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

  AppBar tit_tabs(title_, tabs) {
    return AppBar(
      centerTitle: true,
      backgroundColor: Colors.transparent,
      elevation: 0,
      title: Text(
        title_.toString(),
        textAlign: TextAlign.center,
        style: TextStyle(color: Colors.black),
      ),
      bottom: TabBar(indicatorColor: Color(0xFF92B4EC), tabs: [
        for (String i in tabs.toString().split(","))
          Tab(
            text: i,

            /// masih perlu di buat button untuk mengganti current page di child
          )
      ]),
    );
  }

  /// AppBar Template ->

  /// <- Drawer Template

  Drawer base_drawer(active_) {
    return Drawer(
      child: ListView(children: [
        for (int counter = 0; counter < drawer_pages.length; counter++)
          ListTile(
            leading: Icon(Icons.cabin),
            title: Text(drawer_pages[counter]),
            selected: drawer_pages.indexOf(active_) == counter,
            onTap: () {
              _ondrawertap(counter);
            },
          )
      ]),
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
