import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../AppBar/prov_appbar.dart';
import '../ai_test/ai.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {}

  @override
  Widget build(BuildContext context) {
    ///
    /// <- Provider

    final prov_apbr = Provider.of<Apbr>(context);
    final aireco = Provider.of<Recom>(context);
    final recodata = aireco.recoitems;

    /// Provider ->
    ///

    final ScrollController controller = ScrollController();
    final ScrollController controller_v = ScrollController();

    Map<String, AppBar> appbars = {
      "search_pp": prov_apbr.search_pp(),
      "tit": prov_apbr.tit(prov_apbr.current_page["title"]),
      "tit_tabs": prov_apbr.tit_tabs(
          prov_apbr.current_page["title"], prov_apbr.current_page["tabs"])
    };

    Map<String, Drawer> drawers = {
      "base_drawer":
          prov_apbr.base_drawer(prov_apbr.current_page["drawer_page"]!),
    };

    Map<String, Container> bodys = {
      "gettingstarted": prov_apbr.gettingstarted(),
      "home": prov_apbr.home(context, controller, controller_v, recodata),
    };

    Map<String, BottomNavigationBar> btmnavs = {
      "base_btmnav": prov_apbr
          .base_btmnav(int.parse(prov_apbr.current_page["btm_index"]!)),
      "btmnav_unselec": prov_apbr
          .btmnav_unselec(int.parse(prov_apbr.current_page["btm_index"]!))
    };

    return DefaultTabController(
        length: int.parse(prov_apbr.current_page["tab_length"]!),
        child: Scaffold(
          appBar: appbars[prov_apbr.current_page["appbar"]],
          drawer: drawers[prov_apbr.current_page["drawer"]],
          body: bodys[prov_apbr.current_page["body"]],
          bottomNavigationBar: btmnavs[prov_apbr.current_page["btmnav"]],
        ));
  }
}
