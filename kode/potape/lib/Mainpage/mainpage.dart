import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:provider/provider.dart';
import '../AppBar/prov_appbar.dart';
import '/sorter/sorter.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final ScrollController controller = ScrollController();

  TextEditingController otpF1 = TextEditingController();
  TextEditingController otpF2 = TextEditingController();
  TextEditingController otpF3 = TextEditingController();
  TextEditingController otpF4 = TextEditingController();

  @override
  void initState() {
    super.initState();
    otpF1.addListener(() {
      final String text = otpF1.text;
      otpF1.value = otpF1.value.copyWith(
        text: text,
        selection: TextSelection(baseOffset: 0, extentOffset: text.length),
        composing: TextRange.empty,
      );
    });
    otpF2.addListener(() {
      final String text = otpF2.text;
      otpF2.value = otpF2.value.copyWith(
        text: text,
        selection: TextSelection(baseOffset: 0, extentOffset: text.length),
        composing: TextRange.empty,
      );
    });
    otpF3.addListener(() {
      final String text = otpF3.text;
      otpF3.value = otpF3.value.copyWith(
        text: text,
        selection: TextSelection(baseOffset: 0, extentOffset: text.length),
        composing: TextRange.empty,
      );
    });
    otpF4.addListener(() {
      final String text = otpF4.text;
      otpF4.value = otpF4.value.copyWith(
        text: text,
        selection: TextSelection(baseOffset: 0, extentOffset: text.length),
        composing: TextRange.empty,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    ///
    /// <- Provider

    final prov_apbr = Provider.of<Apbr>(context);
    final sorter = Provider.of<Sorter>(context);
    final sortedItem = sorter.sortedItems;
    final server_profiles = sorter.server_profiles;
    final addNewProfile = sorter.addNewProfile;
    final loginProfile = sorter.loginProfile;

    /// Provider ->
    ///

    Map<String, AppBar> appbars = {
      "search_pp": prov_apbr.search_pp(),
      "tit": prov_apbr.tit(prov_apbr.current_page["title"]),
      "tit_back": prov_apbr.tit_back(prov_apbr.current_page["title"]),
      "tit_double_back":
          prov_apbr.tit_double_back(prov_apbr.current_page["title"], context),
      "tit_back_edit": prov_apbr.tit_back_edit(
          prov_apbr.current_page["title"], sortedItem, sorter.editItem),
      "tit_tabs": prov_apbr.tit_tabs(
          prov_apbr.current_page["title"], prov_apbr.current_page["tabs"])
    };

    Map<String, Drawer> drawers = {
      "base_drawer": prov_apbr.base_drawer(
          prov_apbr.current_page["drawer_page"]!, context),
    };

    Map<String, Container> bodys = {
      "gettingstarted": prov_apbr.gettingstarted(context),
      "login":
          prov_apbr.login(context, server_profiles, loginProfile, sortedItem),
      "register": prov_apbr.register(
          context, server_profiles, otpF1, otpF2, otpF3, otpF4),
      // "shop": prov_apbr.shop(context),
      "otp": prov_apbr.otp(
          context, addNewProfile, otpF1, otpF2, otpF3, otpF4, sortedItem),
      "forgotpass": prov_apbr.forgotpass(
          context, server_profiles, otpF1, otpF2, otpF3, otpF4),
      "forgotpass2": prov_apbr.forgotpass2(context, sorter.changePassword),
      "home": prov_apbr.home(
        context,
        controller,
        sortedItem,
      ),
      "detailsitem":
          prov_apbr.detailsitem(context, sorter.manageItemAddHistory),
      "profile": prov_apbr.profile(),
    };

    // Map<String, BottomNavigationBar> btmnavs = {
    //   "base_btmnav": prov_apbr
    //       .base_btmnav(int.parse(prov_apbr.current_page["btm_index"]!)),
    //   "btmnav_unselec": prov_apbr
    //       .btmnav_unselec(int.parse(prov_apbr.current_page["btm_index"]!))
    // };

    Map<String, FloatingActionButton> fabs = {
      "insertItem":
          prov_apbr.insertItem(context, sortedItem, sorter.addItemSingle),
    };

    return WillPopScope(
        child: DefaultTabController(
            length: int.parse(prov_apbr.current_page["tab_length"]!),
            child: Scaffold(
              backgroundColor: Color(0xFF141D26),
              appBar: appbars[prov_apbr.current_page["appbar"]],
              drawer: drawers[prov_apbr.current_page["drawer"]],
              body: bodys[prov_apbr.current_page["body"]],
              // bottomNavigationBar: btmnavs[prov_apbr.current_page["btmnav"]],
              floatingActionButton: fabs[prov_apbr.current_page["fab"]],
            )),
        onWillPop: () async {
          if (prov_apbr.pageHistory.length <= 1) {
            showDialog(
                context: context,
                builder: (context) {
                  return Theme(
                      data: ThemeData(brightness: Brightness.light),
                      child: AlertDialog(
                          title: Text('Do you really want to quit?'),
                          actions: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                TextButton(
                                    onPressed: () =>
                                        Navigator.of(context).pop(false),
                                    child: const Text('Cancel')),
                                Container(
                                  height: 14,
                                  child: VerticalDivider(
                                    color: Colors.black26,
                                    thickness: 1,
                                  ),
                                ),
                                TextButton(
                                    onPressed: () {
                                      SystemNavigator.pop();
                                    },
                                    child: const Text('Yes')),
                              ],
                            ),
                          ]));
                });
          } else {
            if (prov_apbr.detailsEdit == false) {
              prov_apbr.removeHistoryOne();
            } else {
              showDialog(
                  context: context,
                  builder: (context) {
                    return Theme(
                        data: ThemeData(brightness: Brightness.light),
                        child: AlertDialog(
                            title: Text('Save your changes or discard them?'),
                            actions: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  TextButton(
                                      onPressed: () =>
                                          Navigator.of(context).pop(false),
                                      child: const Text('Cancel')),
                                  Container(
                                    height: 14,
                                    child: VerticalDivider(
                                      color: Colors.black26,
                                      thickness: 1,
                                    ),
                                  ),
                                  TextButton(
                                      onPressed: () {
                                        prov_apbr.detailsEditChange(
                                            !prov_apbr.detailsEdit);
                                        Navigator.pop(context);
                                      },
                                      child: const Text('Discard')),
                                  Container(
                                    height: 14,
                                    child: VerticalDivider(
                                      color: Colors.black26,
                                      thickness: 1,
                                    ),
                                  ),
                                  TextButton(
                                      onPressed: () {
                                        prov_apbr.detailsEditChange(
                                            !prov_apbr.detailsEdit);
                                        Navigator.pop(context);
                                      },
                                      child: const Text('Save')),
                                ],
                              ),
                            ]));
                  });
            }
          }
          return false;
        });
  }
}
