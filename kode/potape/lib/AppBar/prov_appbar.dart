import 'dart:convert';
import 'dart:io';
import 'dart:async';
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:provider/provider.dart';

import 'appbar/search_pp.dart';
import 'appbar/tit.dart';
import 'appbar/tit_back.dart';
import 'appbar/tit_back_edit.dart';
import 'appbar/tit_double_back.dart';
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
import 'body/setting.dart';
import 'body/shop.dart';
import 'btmnav/base_btmnav.dart';
import 'btmnav/btmnav_unselec.dart';
import 'drawer/base_drawer.dart';

/// UNTUK HAL APPBAR KERJAKAN DISINI

class Apbr extends ChangeNotifier {
  /// <- Data

  Map<String, String> _current_page = {
    "appbar": "tit_back",
    "drawer": "",
    "body": "otp",
    "btmnav": "",
    "btm_index": "0",
    "drawer_page": "0",
    "title": "Verification",
    "tab_length": "0",
  };

  Map<String, String> get current_page => currentPage();

  Map<String, String> currentPage() {
    Map<String, String> curPage = _pages[pageHistory.last]!;
    if (pageHistory.last == 'home' && pageHistory != ["home"]) {
      pageHistory = ["home"];
      notifyListeners();
    }
    return curPage;
  }

  // List<String> pageHistory = ["gettingstarted"];
  List<String> pageHistory = ["home"];

  void removeHistoryOne() {
    pageHistory.removeLast();
    notifyListeners();
  }

  void historyLogout() {
    pageHistory = ["gettingstarted"];
    notifyListeners();
  }

  void setPageHistory(val) {
    pageHistory = val;
    notifyListeners();
  }

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
      "appbar": "tit_double_back",
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
      "drawer_page": "69",
      "title": "Home",
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
    "setting": {
      "appbar": "tit_back",
      "drawer": "",
      "body": "setting",
      "btmnav": "",
      "btm_index": "0",
      "drawer_page": "0",
      "title": "Setting",
      "tab_length": "0",
    },
    // "shop": {
    //   "appbar": "search_pp",
    //   "drawer": "base_drawer",
    //   "body": "shop",
    //   "btmnav": "base_btmnav",
    //   "btm_index": "1",
    //   "drawer_page": "1",
    //   "title": "Shop",
    //   "tab_length": "0",
    // },
    // "cart": {
    //   "appbar": "tit",
    //   "drawer": "base_drawer",
    //   "body": "cart",
    //   "btmnav": "base_btmnav",
    //   "btm_index": "2",
    //   "drawer_page": "2",
    //   "title": "Cart",
    //   "tab_length": "0",
    // },
    // "ongoing": {
    //   "appbar": "tit_tabs",
    //   "drawer": "base_drawer",
    //   "body": "cart",
    //   "btmnav": "base_btmnav",
    //   "btm_index": "3",
    //   "drawer_page": "3",
    //   "title": "Purchase",
    //   "tab_length": "2",
    //   "tabs": "Ongoing,Done",
    // },
    // "done": {
    //   "appbar": "tit_tabs",
    //   "drawer": "base_drawer",
    //   "body": "done",
    //   "btmnav": "base_btmnav",
    //   "btm_index": "3",
    //   "drawer_page": "3",
    //   "title": "Purchase",
    //   "tab_length": "2",
    //   "tabs": "Ongoing,Done",
    // },
    // "profile": {
    //   "appbar": "tit",
    //   "drawer": "base_drawer",
    //   "body": "profile",
    //   "btmnav": "",
    //   "btm_index": "0",
    //   "drawer_page": "4",
    //   "title": "Profile",
    //   "tab_length": "0",
    // },
    // "dashboard": {
    //   "appbar": "tit",
    //   "drawer": "base_drawer",
    //   "body": "dashboard",
    //   "btmnav": "",
    //   "btm_index": "0",
    //   "drawer_page": "5",
    //   "title": "Dashboard",
    //   "tab_length": "0",
    // },
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
    pageHistory.add(btm_pages[index]!);
    notifyListeners();
  }

  List<Map<String, Icon>> drawer_pages = [
    {"Setting": Icon(Icons.home)},
    {"Logout": Icon(Icons.exit_to_app)},
  ];

  Map<String, Map<String, String>> _profiles = {
    "abc1@gmail.com": {"email": "abc1@gmail.com"},
    "abc2@gmail.com": {"email": "abc2@gmail.com"},
    "abc3@gmail.com": {"email": "abc3@gmail.com"},
  };

  void _ondrawertap(index, context) {
    Map<int, String> drawer_pages = {
      0: "setting",
      1: "logout",
    };
    if ("logout" == drawer_pages[index]) {
      historyLogout();
    } else {
      pageHistory.add(drawer_pages[index]!);
    }
    Navigator.pop(context);
    notifyListeners();
  }

  void onPageChange(page) {
    isObs1 = true;
    isObs2 = true;
    registerErrTextChange(["", "", "", ""]);
    detailsEdit = false;
    pageHistory.add(page);
    notifyListeners();
  }

  Map<String, dynamic> _currentSingleItem = {
    "Kaki William": {
      "gudang": "Gudang A",
      "quantity": "6",
      "deskripsi": "Kaki kesukaan William",
      "manage_cost": "0",
      "history": [
        {"quantity": "10", "harga": "4600", "time": "1-6-2023"},
      ]
    },
  };

  Map<String, dynamic> get currentSingleItem => _currentSingleItem;

  void changeCurrentSingleItem(names, data, index) {
    Map<String, dynamic> oneData = {
      names.elementAt(index): data.elementAt(index)
    };
    _currentSingleItem = oneData;
    notifyListeners();
  }

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

  TextEditingController usernameEmail = TextEditingController();
  TextEditingController usernameRegis = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController emailRegis = TextEditingController();
  TextEditingController emailForgot = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController passwordRegis = TextEditingController();
  TextEditingController passwordForgot = TextEditingController();
  TextEditingController conpassword = TextEditingController();
  TextEditingController conpasswordForgot = TextEditingController();
  TextEditingController otpText = TextEditingController();
  TextEditingController manageItemQuantity = TextEditingController();

  String usernameEmailErrText = "";
  String emailErrText = "";
  String passwordErrText = "";
  String conpasswordErrText = "";
  String otpErrText = "";
  String manageItemQuantityErrText = "";

  String emailChangePassword = "";

  String regisUsernameText = "";
  String regisEmailText = "";
  String regisPasswordText = "";

  void emailChangePasswordChange(val) {
    emailChangePassword = val;
    notifyListeners();
  }

  void regisUsernameTextChange(val) {
    regisUsernameText = val;
    notifyListeners();
  }

  void regisEmailTextChange(val) {
    regisEmailText = val;
    notifyListeners();
  }

  void regisPasswordTextChange(val) {
    regisPasswordText = val;
    notifyListeners();
  }

  void resetErrText() {
    usernameEmailErrText = "";
    emailErrText = "";
    passwordErrText = "";
    conpasswordErrText = "";
    otpErrText = "";
    notifyListeners();
  }

  void registerErrTextChange(value) {
    usernameEmailErrText = value[0];
    emailErrText = value[1];
    passwordErrText = value[2];
    conpasswordErrText = value[3];
    notifyListeners();
  }

  void manageItemErrTextChange(val) {
    manageItemQuantityErrText = val;
    notifyListeners();
  }

  TextStyle labelTextStyle = TextStyle(color: Colors.white54);

  List<dynamic> userCheck = [];

  List<dynamic> usernameEmailCheck(String usernameEmail, String password,
      Map<String, Map<String, Map<String, dynamic>>> server_profiles) {
    if (server_profiles.containsKey(usernameEmail)) {
      if (server_profiles[usernameEmail.toString()]!["profileData"]!["password"]
              .toString() ==
          password.toString()) {
        return [false, usernameEmail];
      }
    }
    for (String key_ in server_profiles.keys) {
      if (server_profiles[key_]!["profileData"]!["email"] == usernameEmail &&
          server_profiles[key_]!["profileData"]!["password"].toString() ==
              password.toString()) {
        return [false, key_];
      }
    }
    return [true];
  }

  String dgoNum = "WilliamTolol";

  var dgoCountdownTimer;
  Duration dgoTime = Duration(seconds: 0);
  void dgostartTimer() {
    if (dgoTime.inSeconds == 0) {
      otpNum = 1234.toString();
      dgoNum = "Tolol";
      // otpNum = (Random().nextDouble() * 10000).toInt().toString();
      dgoTime = Duration(seconds: 60);
      otpTime = Duration(seconds: 60);
      if (otpCountdownTimer != null) otpCountdownTimer!.cancel();
      dgoCountdownTimer = Timer.periodic(
          Duration(seconds: 1), (_) => dgoSetCountDown(dgoCountdownTimer));
      otpCountdownTimer = Timer.periodic(
          Duration(seconds: 1), (_) => otpSetCountDown(otpCountdownTimer));
    }
    notifyListeners();
  }

  void dgoStopTimer(dgoCountdownTimer) {
    dgoCountdownTimer!.cancel();
    notifyListeners();
  }

  void dgoResetTimer(dgoCountdownTimer) {
    dgoStopTimer(dgoCountdownTimer);
    otpNum = "WilliamTolol";
    dgoTime = Duration(seconds: 0);
    notifyListeners();
  }

  void dgoSetCountDown(dgoCountdownTimer) {
    int dgoreduceSecondsBy = 1;
    int dgoseconds = dgoTime.inSeconds - dgoreduceSecondsBy;
    if (dgoseconds < 0) {
      dgoCountdownTimer!.cancel();
    } else {
      dgoTime = Duration(seconds: dgoseconds);
    }
    notifyListeners();
  }

  String otpNum = "WilliamTolol";

  var otpCountdownTimer;

  Duration otpTime = Duration(seconds: 0);

  void otpstartTimer() {
    if (otpTime.inSeconds == 0) {
      otpNum = 1234.toString();
      // otpNum = (Random().nextDouble() * 10000).toInt().toString(); // ganti saat true release
      otpTime = Duration(seconds: 60);

      otpCountdownTimer = Timer.periodic(
          Duration(seconds: 1), (_) => otpSetCountDown(otpCountdownTimer));
    }
    notifyListeners();
  }

  void otpStopTimer(otpCountdownTimer) {
    otpCountdownTimer!.cancel();
    notifyListeners();
  }

  void otpResetTimer(otpCountdownTimer) {
    otpStopTimer(otpCountdownTimer);
    otpNum = "WilliamTolol";
    otpTime = Duration(seconds: 0);
    notifyListeners();
  }

  void otpSetCountDown(otpCountdownTimer) {
    int reduceSecondsBy = 1;
    int seconds = otpTime.inSeconds - reduceSecondsBy;
    if (seconds < 0) {
      otpNum = "WilliamTolol";
      otpCountdownTimer!.cancel();
    } else {
      otpTime = Duration(seconds: seconds);
    }
    notifyListeners();
  }

  List<String> otpList = ["", "", "", ""];

  void resetOtpList() {
    otpList = ["", "", "", ""];
    notifyListeners();
  }

  void otpListChange(val, index) {
    otpList[index] = val;
    notifyListeners();
  }

  void otpRegister(addNewProfile, nextPage) {
    addNewProfile(regisUsernameText,
        {"email": regisEmailText, "password": regisPasswordText});
    regisUsernameTextChange("");
    regisEmailTextChange("");
    regisPasswordTextChange("");
    usernameEmail.clear();
    email.clear();
    password.clear();
    conpassword.clear();
    isTr = false;
    onPageChange(nextPage);
    notifyListeners();
  }

  void otpForgotpass() {
    emailForgot.clear();
    passwordForgot.clear();
    onPageChange("forgotpass2");
    notifyListeners();
  }

  List<FocusNode> focusNodes = [for (int j = 0; j < 4; j++) FocusNode()];

  Container OtpTextFieldWilliamTolol({
    List<TextEditingController>? handleControllers,
    int numberOfFields = 4,
    double fieldWidth = 50.0,
    Color borderColor = const Color(0xFF182631),
    Color focusedBorderColor = const Color(0xFF2196F3),
    List<TextInputFormatter>? inputFormatters,
    BuildContext? context,
    String? nextPage,
    dynamic addNewProfile,
    String? otpPurpose,
  }) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          for (int i = 0; i < numberOfFields; i++)
            Container(
              margin: EdgeInsets.only(right: 8),
              width: fieldWidth,
              child: TextField(
                controller: handleControllers![i],
                focusNode: focusNodes[i],
                keyboardType: TextInputType.number,
                inputFormatters: [
                  FilteringTextInputFormatter.allow(RegExp(r'[0-9]'))
                ],
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                  hintText: "",
                  counterText: "",
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16),
                    borderSide: const BorderSide(
                      width: 2,
                      color: Colors.blueGrey,
                    ),
                  ),
                ),
                maxLength: 1,
                readOnly: false,
                autofocus: false,
                style: TextStyle(color: Colors.white, fontSize: 30),
                onChanged: (value) {
                  otpListChange(value, i);
                  if (value != "") {
                    ///
                    /// <- Bagian pergantian Focus
                    if (i < numberOfFields - 1) {
                      focusNodes[i].unfocus();
                      FocusScope.of(context!).requestFocus(focusNodes[i + 1]);
                    } else {
                      focusNodes[i].unfocus();
                    }

                    /// Bagian pergantian Focus ->
                    ///
                    if (otpList.join().length == 4) {
                      if (otpList.join() == otpNum) {
                        otpPurpose == "register"
                            ? otpRegister(addNewProfile, nextPage)
                            : otpPurpose == "forgotpass"
                                ? otpForgotpass()
                                : null;
                      } else {}
                    }
                  }
                  notifyListeners();
                },
              ),
            )
        ],
      ),
    );
  }

  String? otpPurpose;

  void otpPurposeChange(val) {
    otpPurpose = val;
    notifyListeners();
  }

  bool detailsEdit = false;

  void detailsEditChange(val) {
    detailsEdit = val;
    notifyListeners();
  }

  String manageItemType = "Add";

  void manageItemTypeChange(val) {
    manageItemType = val;
    notifyListeners();
  }

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

  AppBar tit_back(title_) {
    return tit_back_apbr(title_);
  }

  AppBar tit_double_back(title_, context) {
    return tit_double_back_apbr(title_, context);
  }

  AppBar tit_back_edit(title_) {
    // print(_currentSingleItem.keys.first);
    return tit_back_edit_apbr(
        title_, currentSingleItem.keys.first, detailsEdit, detailsEditChange);
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
    return gettingstarted_body(context, onPageChange);
  }

  Container login(context, server_profiles, loginProfile) {
    return Container(
        child: login_body(
            context,
            isObs1,
            _isObs1,
            onPageChange,
            "home",
            server_profiles,
            usernameEmail,
            email,
            password,
            conpassword,
            usernameEmailErrText,
            emailErrText,
            passwordErrText,
            conpasswordErrText,
            registerErrTextChange,
            labelTextStyle,
            loginProfile,
            userCheck,
            usernameEmailCheck));
  }

  Container register(context, server_profiles, otpF1, otpF2, otpF3, otpF4) {
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
            usernameRegis,
            emailRegis,
            passwordRegis,
            conpassword,
            usernameEmailErrText,
            emailErrText,
            passwordErrText,
            conpasswordErrText,
            registerErrTextChange,
            labelTextStyle,
            otpstartTimer,
            otpF1,
            otpF2,
            otpF3,
            otpF4,
            resetOtpList,
            otpPurposeChange,
            regisEmailTextChange,
            regisPasswordTextChange,
            regisUsernameTextChange));
  }

  Container otp(context, addNewProfile, otpF1, otpF2, otpF3, otpF4) {
    return Container(
        child: otp_body(
      context,
      onPageChange,
      "home",
      usernameEmail,
      email,
      password,
      addNewProfile,
      otpText,
      otpErrText,
      otpNum,
      otpTime,
      dgoNum,
      dgoTime,
      dgostartTimer,
      otpF1,
      otpF2,
      otpF3,
      otpF4,
      OtpTextFieldWilliamTolol,
      otpPurpose,
    ));
  }

  Container forgotpass(context, server_profiles, otpF1, otpF2, otpF3, otpF4) {
    return Container(
        child: forgotpass_body(
            context,
            onPageChange,
            server_profiles,
            emailForgot,
            usernameEmailErrText,
            emailErrText,
            passwordErrText,
            conpasswordErrText,
            registerErrTextChange,
            labelTextStyle,
            otpstartTimer,
            otpF1,
            otpF2,
            otpF3,
            otpF4,
            resetOtpList,
            otpPurposeChange,
            emailChangePassword,
            emailChangePasswordChange));
  }

  Container forgotpass2(context, changePassword) {
    return Container(
        child: forgotpass2_body(
            context,
            isObs1,
            isObs2,
            _isObs1,
            _isObs2,
            onPageChange,
            emailForgot,
            passwordForgot,
            conpasswordForgot,
            usernameEmailErrText,
            emailErrText,
            passwordErrText,
            conpasswordErrText,
            registerErrTextChange,
            labelTextStyle,
            changePassword,
            emailChangePassword,
            emailChangePasswordChange));
  }

  Container home(context, controller, sortedItem) {
    return Container(
        child: home_body(context, controller, sortedItem, onPageChange,
            "detailitem", currentSingleItem, changeCurrentSingleItem));
  }

  Container setting() {
    return Container(child: setting_body());
  }

  Container detailsitem(context, manageItemAddHistory) {
    return Container(
        child: detailsietm_body(
            context,
            currentSingleItem,
            detailsEdit,
            detailsEditChange,
            manageItemQuantity,
            manageItemQuantityErrText,
            manageItemErrTextChange,
            labelTextStyle,
            manageItemType,
            manageItemTypeChange,
            manageItemAddHistory));
  }

  // Container shop(context) {
  //   return Container(child: shop_body(context));
  // }

  ///  Body Template ->

  /// <- Bottom Navigation Template

  BottomNavigationBar base_btmnav(btm_index) {
    return base_btmnav_btmnav(btm_index, _onbtmtap, btmnavdata);
  }

  BottomNavigationBar btmnav_unselec(btm_index) {
    return btmnav_unselec_btmnav(btm_index, _onbtmtap, btmnavdata);
  }

  /// Bottom Navigation Template ->
  ///
  /// <- Kelas

  TimeOfDay selTime = TimeOfDay.now();

  void selTimeChange(val) {
    selTime = val;
    notifyListeners();
  }

  DateTime selDate = DateTime.now();

  void selDateChange(val) {
    selDate = val;
    notifyListeners();
  }

  String type = "date";
  void typeChange(val) {
    type = val;
    notifyListeners();
  }

  DateTimeRange selDateRange =
      DateTimeRange(start: DateTime(2023, 6, 26), end: DateTime(2023, 6, 27));

  void selDateRangeChange(val) {
    selDateRange = val;
    notifyListeners();
  }

  /// Kelas ->
}

//  class MySingleton {
//      static MySingleton? _instance_ = null;

//     late Timer timer_;

//      static GetInstance(){
//         if (_instance_ == null) _instance_ = new MySingleton();
//         return _instance_;
//     }

//      _MySingleton(){
//          timer_ = new Timer(Callback, ...);
//     }
// }
