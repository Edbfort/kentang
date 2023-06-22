import 'package:flutter/material.dart';

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
      "tit_back": prov_apbr.tit_back(prov_apbr.current_page["title"], ""),
      "tit_back_edit": prov_apbr.tit_back_edit(prov_apbr.current_page["title"], ""),
      "tit_tabs": prov_apbr.tit_tabs(
          prov_apbr.current_page["title"], prov_apbr.current_page["tabs"])
    };

    Map<String, Drawer> drawers = {
      "base_drawer": prov_apbr.base_drawer(
          prov_apbr.current_page["drawer_page"]!, context),
    };

    Map<String, Container> bodys = {
      "gettingstarted": prov_apbr.gettingstarted(context),
      "login": prov_apbr.login(context, server_profiles, loginProfile),
      "register": prov_apbr.register(context, server_profiles),
      "home": prov_apbr.home(context, controller, sortedItem,),
      "shop": prov_apbr.shop(context),
      "otp": prov_apbr.otp(context, addNewProfile),
      "forgotpass": prov_apbr.forgotpass(context),
      "forgotpass2": prov_apbr.forgotpass2(context),
      "detailsitem": prov_apbr.detailsitem(context),
    };

    Map<String, BottomNavigationBar> btmnavs = {
      "base_btmnav": prov_apbr
          .base_btmnav(int.parse(prov_apbr.current_page["btm_index"]!)),
      "btmnav_unselec": prov_apbr
          .btmnav_unselec(int.parse(prov_apbr.current_page["btm_index"]!))
    };

    return WillPopScope(
        child: DefaultTabController(
            length: int.parse(prov_apbr.current_page["tab_length"]!),
            child: Scaffold(
              backgroundColor: Color(0xFF141D26),
              appBar: appbars[prov_apbr.current_page["appbar"]],
              drawer: drawers[prov_apbr.current_page["drawer"]],
              body: bodys[prov_apbr.current_page["body"]],
              bottomNavigationBar: btmnavs[prov_apbr.current_page["btmnav"]],
            )),
        onWillPop: () async {
          prov_apbr.onPageChange("home");
          return false;
        });
  }
}
