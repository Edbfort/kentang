import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
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
    ///
    /// <- Provider

    final prov_apbr = Provider.of<Apbr>(context);

    /// Provider ->
    ///

    Map<String, AppBar> appbars = {
      "search_pp": prov_apbr.search_pp(),
      "tit": prov_apbr.tit(prov_apbr.current_page["title"])
    };

    Map<String, BottomNavigationBar> btmnavs = {
      "base_btmnav": prov_apbr
          .base_btmnav(int.parse(prov_apbr.current_page["btm_index"]!)),
      "btmnav_unselec": prov_apbr
          .btmnav_unselec(int.parse(prov_apbr.current_page["btm_index"]!))
    };

    Scaffold current_scaffold = Scaffold(
      appBar: appbars[prov_apbr.current_page["appbar"]],
      drawer: Drawer(
          // Tambahkan konten drawer yang diinginkan di sini
          ),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.only(top: 20),
            margin: EdgeInsets.symmetric(horizontal: 30),
            width: MediaQuery.of(context).size.width,
            height: 225,
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          SizedBox(height: 20),
          Container(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 30),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Balanced',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      '\$500.00',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Text('Top Up'),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.blue,
                    textStyle: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    padding: EdgeInsets.symmetric(vertical: 12, horizontal: 20),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: btmnavs[prov_apbr.current_page["btmnav"]],
    );

    return current_scaffold;
  }
}
