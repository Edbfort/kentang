import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import '/data/pagedata.dart';
import 'package:provider/provider.dart';
import '../ai/ai.dart';

class Test extends StatefulWidget {
  const Test({
    super.key,
  });

  @override
  State<Test> createState() => _Test();
}

class MyCustomScrollBehavior extends MaterialScrollBehavior {
  // Override behavior methods and getters like dragDevices
  @override
  Set<PointerDeviceKind> get dragDevices => {
        PointerDeviceKind.touch,
        PointerDeviceKind.mouse,
        // etc.
      };
}

class _Test extends State<Test> {
// ScrollBehavior can be set for a specific widget.
  final ScrollController controller = ScrollController();

  @override
  Widget build(BuildContext context) {
    final aireco = Provider.of<Recom>(context);
    final pagedata = Provider.of<PageData>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("Test"),
      ),
      body: ScrollConfiguration(
        behavior: MyCustomScrollBehavior(),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          controller: controller,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 10,
              ),
              Container(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Rekomendasi"),
                  SizedBox(
                    height: 10,
                  ),
                  ScrollConfiguration(
                    behavior: MyCustomScrollBehavior(),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      controller: controller,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          for (int i = 0; i < 10; i++)
                            Container(
                                child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  height: 220,
                                  width: 190,
                                  color: Colors.green,
                                  child: Text("Foto"),
                                ),
                                Text("Nama Produk"),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      child: Row(
                                        children: [
                                          Icon(Icons.star_border_outlined)
                                        ],
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            )),
                        ],
                      ),
                    ),
                  ),
                ],
              )),
              SizedBox(
                height: 10,
              ),
              Container(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Hot Today"),
                  SizedBox(
                    height: 10,
                  ),
                  ScrollConfiguration(
                    behavior: MyCustomScrollBehavior(),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      controller: controller,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          for (int i = 0; i < 10; i++)
                            Container(
                                child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  height: 220,
                                  width: 190,
                                  color: Colors.green,
                                  child: Text("Foto"),
                                ),
                                Text("Nama Produk"),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      child: Row(
                                        children: [
                                          Icon(Icons.star_border_outlined)
                                        ],
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            )),
                        ],
                      ),
                    ),
                  ),
                ],
              )),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color.fromARGB(255, 146, 180, 236),

        selectedItemColor: Colors.white,
        type: BottomNavigationBarType.fixed, // set type to fixed
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
            icon: Icon(Icons.shopping_cart),
            label: 'Cart',
          ),
        ],
        currentIndex: pagedata.bottom_nav_selec_index,
        onTap: pagedata.on_bottom_nav_tap,
      ),
    );
  }
}
