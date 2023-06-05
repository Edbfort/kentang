import 'dart:convert';
import 'dart:io';

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import 'package:provider/provider.dart';

import 'appbar/search_pp.dart';
import 'appbar/tit.dart';
import 'appbar/tit_tabs.dart';
import 'body/gettingstarted.dart';
import 'body/home.dart';
import 'body/shop.dart';
import 'btmnav/base_btmnav.dart';
import 'btmnav/btmnav_unselec.dart';
import 'drawer/base_drawer.dart';

/// UNTUK HAL APPBAR KERJAKAN DISINI

class Apbr extends ChangeNotifier {
  /// <- Data

  Map<String, String> current_page = {
    "appbar": "search_pp",
    "drawer": "base_drawer",
    "body": "home",
    "btmnav": "",
    "btm_index": "0",
    "drawer_page": "0",
    "title": "Home",
    "tab_length": "0",
  };

  Map<String, String> current_profile = {"email": "abc1@gmail.com"};

  Map<String, Map<String, String>> _pages = {
    "gettingstarted": {
      "appbar": "tit",
      "drawer": "",
      "body": "gettingstarted",
      "btmnav": "",
      "btm_index": "0",
      "drawer_page": "0",
      "title": "",
      "tab_length": "0",
    },
    "login": {
      "appbar": "tit_back",
      "drawer": "",
      "body": "login",
      "btmnav": "",
      "btm_index": "0",
      "drawer_page": "0",
      "title": "Login",
      "tab_length": "0",
    },
    "home": {
      "appbar": "search_pp",
      "drawer": "base_drawer",
      "body": "home",
      "btmnav": "",
      "btm_index": "0",
      "drawer_page": "0",
      "title": "Home",
      "tab_length": "0",
    },
    "shop": {
      "appbar": "search_pp",
      "drawer": "base_drawer",
      "body": "shop",
      "btmnav": "base_btmnav",
      "btm_index": "1",
      "drawer_page": "1",
      "title": "Shop",
      "tab_length": "0",
    },
    "cart": {
      "appbar": "tit",
      "drawer": "base_drawer",
      "body": "cart",
      "btmnav": "base_btmnav",
      "btm_index": "2",
      "drawer_page": "2",
      "title": "Cart",
      "tab_length": "0",
    },
    "ongoing": {
      "appbar": "tit_tabs",
      "drawer": "base_drawer",
      "body": "cart",
      "btmnav": "base_btmnav",
      "btm_index": "3",
      "drawer_page": "3",
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
      "drawer_page": "3",
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
      "drawer_page": "4",
      "title": "Profile",
      "tab_length": "0",
    },
    "dashboard": {
      "appbar": "tit",
      "drawer": "base_drawer",
      "body": "dashboard",
      "btmnav": "",
      "btm_index": "0",
      "drawer_page": "5",
      "title": "Dashboard",
      "tab_length": "0",
    },
  };

  List<Map<String, Icon>> btmnavdata = [
    {"Home": Icon(Icons.home)},
    {"Shop": Icon(Icons.store)},
    {"Cart": Icon(Icons.shopping_basket)},
    {
      "Purchase": Icon(Icons.sell),
    }
  ];

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

  void _ondrawertap(index, context) {
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
    Navigator.pop(context);
    notifyListeners();
  }

  List<Map<String, Icon>> drawer_pages = [
    {"Home": Icon(Icons.home)},
    {"Shop": Icon(Icons.store)},
    {"Cart": Icon(Icons.shopping_basket)},
    {
      "Purchase": Icon(Icons.sell),
    },
    {"Profile": Icon(Icons.person)},
    {"Dashboard": Icon(Icons.bar_chart)},
    {"Logout": Icon(Icons.exit_to_app)},
  ];

  Map<String, Map<String, String>> _profiles = {
    "abc1@gmail.com": {"email": "abc1@gmail.com"},
    "abc2@gmail.com": {"email": "abc2@gmail.com"},
    "abc3@gmail.com": {"email": "abc3@gmail.com"},
  };

  /// Data ->

  /// <- AppBar Template

  /// Appbar with search and profile picture
  AppBar search_pp() {
    return search_pp_apbr();
  }

  /// Appbar with title in center
  AppBar tit(title_) {
    return tit_apbr(title_);
  }

  AppBar tit_tabs(title_, tabs) {
    return tit_tabs_apbr(title_, tabs);
  }

  /// AppBar Template ->

  /// <- Drawer Template

  Drawer base_drawer(active_, context) {
    return base_drawer_drawer(
        active_, drawer_pages, _ondrawertap, context, current_profile);
  }

  /// Drawer Template ->

  /// <- Body Template

  Container gettingstarted() {
    return gettingstarted_body();
  }

  Container home(context, controller, sortedItem) {
    return Container(child: home_body(context, controller, sortedItem));
  }

  Container shop(context) {
    return Container(child: shop_body(context));
  }

  ///  Body Template ->

  /// <- Bottom Navigation Template

  BottomNavigationBar base_btmnav(btm_index) {
    return base_btmnav_btmnav(btm_index, _onbtmtap, btmnavdata);
  }

  BottomNavigationBar btmnav_unselec(btm_index) {
    return btmnav_unselec_btmnav(btm_index, _onbtmtap, btmnavdata);
  }

  /// Bottom Navigation Template ->
}
