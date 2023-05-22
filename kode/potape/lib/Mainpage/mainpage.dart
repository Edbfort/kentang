import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:carousel_slider/carousel_slider.dart';
import '../AppBar/prov_appbar.dart';

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
    final prov_apbr = Provider.of<Apbr>(context);

    Map<String, AppBar> appbars = {
      "search_pp": prov_apbr.search_pp(),
      "tit": prov_apbr.tit(prov_apbr.current_page["title"]),
      "tit_tabs": prov_apbr.tit_tabs(
          prov_apbr.current_page["title"], prov_apbr.current_page["tabs"])
    };

    Map<String, Drawer> drawers = {
      "base_drawer": prov_apbr.base_drawer(prov_apbr.current_page["body"]!),
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
        body: Container(
          child: Padding(
            padding: EdgeInsets.all(30),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Rekomendasi",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: SizedBox(
                    height: 200,
                    child: Row(
                      children: [
                        Container(
                          width: 200,
                          margin: EdgeInsets.only(right: 5),
                          color: Colors.amber,
                        ),
                        Container(
                          width: 200,
                          margin: EdgeInsets.only(right: 5),
                          color: Colors.amber,
                        ),
                        Container(
                          width: 200,
                          margin: EdgeInsets.only(right: 5),
                          color: Colors.amber,
                        ),
                        Container(
                          width: 200,
                          margin: EdgeInsets.only(right: 5),
                          color: Colors.amber,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: btmnavs[prov_apbr.current_page["btmnav"]],
      ),
    );
  }
}
