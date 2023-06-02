import 'dart:ui';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:potape/AppBar/body/parts/items_scroll_horizontal.dart';

class MyCustomScrollBehavior extends MaterialScrollBehavior {
  // Override behavior methods and getters like dragDevices
  @override
  Set<PointerDeviceKind> get dragDevices => {
        PointerDeviceKind.touch,
        PointerDeviceKind.mouse,
        // etc.
      };
}

Container home_body(context, controller, controller_v, recodata) {
  double item_container_height = MediaQuery.of(context).size.height / 5 <= 140
      ? MediaQuery.of(context).size.height / 5
      : 140;
  double item_container_width = MediaQuery.of(context).size.width / 2 <= 200
      ? MediaQuery.of(context).size.width / 2
      : 200;

  return Container(
    child: ScrollConfiguration(
      behavior: MyCustomScrollBehavior(),
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        controller: controller_v,
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
                    Padding(
                        padding: EdgeInsets.symmetric(horizontal: 15),
                        child: Column(
                          children: [
                            CarouselSlider(
                              options: CarouselOptions(
                                  height: 250.0, enableInfiniteScroll: false),
                              items: [1, 2, 3, 4, 5].map((i) {
                                return Builder(
                                  builder: (BuildContext context) {
                                    return Container(
                                      margin: EdgeInsets.symmetric(
                                          horizontal: 60.0),
                                      height: 400,
                                      child: Image.asset(
                                        "/FrenchFries50off.png",
                                        width: MediaQuery.of(context)
                                                .size
                                                .width *
                                            1.5, // Multiply by 1.5 for longer width
                                        height: 400,
                                      ),
                                    );
                                  },
                                );
                              }).toList(),
                            ),
                            SizedBox(height: 20),
                            Container(
                              padding: EdgeInsets.symmetric(
                                  vertical: 10, horizontal: 30),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
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
                                      padding: EdgeInsets.symmetric(
                                          vertical: 12, horizontal: 20),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 20),
                            Divider(height: 1, thickness: 1),
                            Container(
                              alignment: Alignment.topLeft,
                              margin: EdgeInsets.only(
                                  top: 30, left: 10, right: 10, bottom: 20),
                              child: Text(
                                "Rekomendasi",
                                style: TextStyle(
                                    fontSize: 25, fontWeight: FontWeight.bold),
                              ),
                            ),
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
                                    for (Map<String, String> i
                                        in recodata.values)
                                      item_container(i, item_container_height,
                                          item_container_width)
                                  ],
                                ),
                              ),
                            ),
                          ],
                        )),
                    SizedBox(
                      height: 10,
                    ),
                    // Container(
                    //     child: Column(
                    //   crossAxisAlignment: CrossAxisAlignment.start,
                    //   children: [
                    //     Text("Hot Today"),
                    //     SizedBox(
                    //       height: 10,
                    //     ),
                    //     ScrollConfiguration(
                    //       behavior: MyCustomScrollBehavior(),
                    //       child: SingleChildScrollView(
                    //         scrollDirection: Axis.horizontal,
                    //         controller: controller,
                    //         child: Row(
                    //           mainAxisAlignment: MainAxisAlignment.start,
                    //           crossAxisAlignment: CrossAxisAlignment.start,
                    //           children: [
                    //             for (int i = 0; i < 10; i++)
                    //               Container(
                    //                   child: Column(
                    //                 crossAxisAlignment:
                    //                     CrossAxisAlignment.start,
                    //                 children: [
                    //                   Container(
                    //                     height: 220,
                    //                     width: 190,
                    //                     color: Colors.green,
                    //                     child: Text("Foto"),
                    //                   ),
                    //                   Text("Nama Produk"),
                    //                   Row(
                    //                     mainAxisAlignment:
                    //                         MainAxisAlignment.start,
                    //                     crossAxisAlignment:
                    //                         CrossAxisAlignment.start,
                    //                     children: [
                    //                       Container(
                    //                         child: Row(
                    //                           children: [
                    //                             Icon(Icons.star_border_outlined)
                    //                           ],
                    //                         ),
                    //                       ),
                    //                     ],
                    //                   )
                    //                 ],
                    //               )),
                    //           ],
                    //         ),
                    //       ),
                    //     ),
                    //   ],
                    // )),
                  ],
                ),
              ),
            ]),
      ),
    ),
  );
}
