import 'dart:convert';
import 'dart:io';
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:provider/provider.dart';

import 'appbar/search_pp.dart';
import 'appbar/tit.dart';
import 'appbar/tit_back.dart';
import 'appbar/tit_back_edit.dart';
import 'appbar/tit_tabs.dart';
import 'body/detailsitem.dart';
import 'body/gettingstarted.dart';
import 'body/login.dart';
import 'body/register.dart';
import 'body/otp.dart';
import 'body/forgotpass.dart';
import 'body/forgotpass2.dart';
import 'body/home.dart';
import 'body/otp.dart';
import 'body/register.dart';
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
    "register": {
      "appbar": "tit_back",
      "drawer": "",
      "body": "register",
      "btmnav": "",
      "btm_index": "0",
      "drawer_page": "0",
      "title": "Register",
      "tab_length": "0",
    },
    "otp": {
      "appbar": "tit_back",
      "drawer": "",
      "body": "otp",
      "btmnav": "",
      "btm_index": "0",
      "drawer_page": "0",
      "title": "Verification",
      "tab_length": "0",
    },
    "forgotpass": {
      "appbar": "tit_back",
      "drawer": "",
      "body": "forgotpass",
      "btmnav": "",
      "btm_index": "0",
      "drawer_page": "0",
      "title": "Forgot Password",
      "tab_length": "0",
    },
    "forgotpass2": {
      "appbar": "tit_back",
      "drawer": "",
      "body": "forgotpass2",
      "btmnav": "",
      "btm_index": "0",
      "drawer_page": "0",
      "title": "Forgot Password",
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
    "detailitem": {
      "appbar": "tit_back_edit",
      "body": "detailsitem",
      "btmnav": "",
      "btm_index": "0",
      "drawer_page": "5",
      "title": "Detail Item [Nama Barang]",
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

  void onPageChange(page) {
    current_page = _pages[page]!;
    notifyListeners();
  }

  Map<String, dynamic> _currentSingleItem = {
    "Kaki William": {
      "gudang": "Gudang A",
      "quantity": "6",
      "deskripsi": "Kaki kesukaan William",
      "manage_cost": "0",
      "history": {'stok': {}, 'harga': {}}
    },
  };

  Map<String, dynamic> get currentSingleItem =>
      _currentSingleItem;

  void changeCurrentSingleItem(val) {
    _currentSingleItem = val;
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

  var pkItem = "";

  bool isObs1 = true;
  bool isObs2 = true;
  bool isTr = false;

  void _isObs1() {
    isObs1 = !isObs1;
    notifyListeners();
  }

  void _isObs2() {
    isObs2 = !isObs2;
    notifyListeners();
  }

  void _isTru() {
    isTr = !isTr;
    notifyListeners();
  }

  TextEditingController username = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController conpassword = TextEditingController();

  String usernameErrText = "";
  String emailErrText = "";
  String passwordErrText = "";
  String conpasswordErrText = "";

  void registerErrTextChange(value) {
    usernameErrText = value[0];
    emailErrText = value[1];
    passwordErrText = value[2];
    conpasswordErrText = value[3];
    notifyListeners();
  }

  TextStyle labelTextStyle = TextStyle(color: Colors.white54);

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

  AppBar tit_back(title_, navs) {
    return tit_back_apbr(title_, navs);
  }

  AppBar tit_back_edit(title_, navs) {
    // print(_currentSingleItem.keys.first);
    return tit_back_edit_apbr(title_, navs, currentSingleItem.keys.first);
    
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

  Container gettingstarted(context) {
    return gettingstarted_body(context);
  }

  Container login(context) {
    return Container(
        child: login_body(context, isObs1, _isObs1, onPageChange, "home"));
  }

  Container register(context, server_profiles) {
    return Container(
        child: register_body(
            context,
            isObs1,
            isObs2,
            _isObs1,
            _isObs2,
            isTr,
            _isTru,
            onPageChange,
            "otp",
            server_profiles,
            username,
            email,
            password,
            conpassword,
            usernameErrText,
            emailErrText,
            passwordErrText,
            conpasswordErrText,
            registerErrTextChange,
            labelTextStyle));
  }

  Container otp(context) {
    return Container(child: otp_body(context));
  }

  Container forgotpass(context) {
    return Container(child: forgotpass_body(context));
  }

  Container forgotpass2(context) {
    return Container(
        child: forgotpass2_body(context, isObs1, isObs2, _isObs1, _isObs2));
  }

  Container home(context, controller, sortedItem) {
    return Container(
        child: home_body(context, controller, sortedItem, onPageChange,
            "detailitem", currentSingleItem,changeCurrentSingleItem));
  }

  Container shop(context) {
    return Container(child: shop_body(context));
  }

  Container detailsitem(context) {
    return Container(child: detailsietm_body(context,currentSingleItem));
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
