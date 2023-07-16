import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../body/login.dart';

Container textFieldTitle2(title_) {
  return Container(
    child: Column(
      children: [
        SizedBox(
          height: 10,
        ),
        Text(
          title_,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 17,
            color: Colors.black,
          ),
        ),
        SizedBox(
          height: 10,
        ),
      ],
    ),
  );
}

FloatingActionButton insertItem_fab(context) {
  return FloatingActionButton(
    onPressed: () {
      showDialog(
          context: context,
          builder: (context) {
            return StatefulBuilder(builder: (context, setState) {
              return Dialog.fullscreen(
                  child: Scaffold(
                      appBar: AppBar(
                        iconTheme: IconThemeData(color: Colors.white),
                        leading: IconButton(
                          icon: Icon(Icons.close),
                          onPressed: () {
                            Navigator.maybePop(context);
                          },
                        ),
                        backgroundColor: Colors.transparent,
                        elevation: 0,
                        centerTitle: true,
                        title: Text(
                          "Add Item",
                          textAlign: TextAlign.center,
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        actions: [
                          TextButton(
                              onPressed: () {
                                Navigator.maybePop(context);
                              },
                              child: Text(
                                "Save",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20),
                              )),
                          Container(
                            width: 8,
                          )
                        ],
                      ),
                      body: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(30),
                            topLeft: Radius.circular(30),
                          ),
                          color: Colors.white,
                        ),
                        width: MediaQuery.of(context).size.width,
                        child: Container(
                          margin: EdgeInsets.only(top: 20, right: 20, left: 20),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                  child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  textFieldTitle2("Item Name"),
                                  TextField(
                                    // inputFormatters: [
                                    //   FilteringTextInputFormatter.allow(RegExp(r'[0-9a-zA-Z]'))
                                    // ],
                                    style: TextStyle(color: Colors.black),
                                    decoration: InputDecoration(
                                      hintText: "Item Name",
                                      hintStyle:
                                          TextStyle(color: Colors.black26),
                                      floatingLabelBehavior:
                                          FloatingLabelBehavior.never,
                                      // labelStyle: labelTextStyle,
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          width: 2,
                                          color: Colors.blueGrey,
                                        ),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          width: 2,
                                          color: Colors.blueGrey,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Row(children: [
                                    Expanded(
                                      flex: 1,
                                      child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            textFieldTitle2("Location"),
                                            TextField(
                                              style: TextStyle(
                                                  color: Colors.black),
                                              decoration: InputDecoration(
                                                hintText: "Location",
                                                hintStyle: TextStyle(
                                                    color: Colors.black26),
                                                floatingLabelBehavior:
                                                    FloatingLabelBehavior.never,
                                                // labelStyle: labelTextStyle,
                                                enabledBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    width: 2,
                                                    color: Colors.blueGrey,
                                                  ),
                                                ),
                                                focusedBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    width: 2,
                                                    color: Colors.blueGrey,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ]),
                                    ),
                                    Container(
                                      width: 10,
                                    ),
                                    Expanded(
                                      flex: 1,
                                      child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            textFieldTitle2("Quantity"),
                                            TextField(
                                              keyboardType:
                                                  TextInputType.number,
                                              inputFormatters: [
                                                FilteringTextInputFormatter
                                                    .allow(RegExp(r'[0-9]'))
                                              ],
                                              style: TextStyle(
                                                  color: Colors.black),
                                              decoration: InputDecoration(
                                                hintText: "Quantity",
                                                hintStyle: TextStyle(
                                                    color: Colors.black26),
                                                floatingLabelBehavior:
                                                    FloatingLabelBehavior.never,
                                                // labelStyle: labelTextStyle,
                                                enabledBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    width: 2,
                                                    color: Colors.blueGrey,
                                                  ),
                                                ),
                                                focusedBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    width: 2,
                                                    color: Colors.blueGrey,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ]),
                                    ),
                                  ]),
                                  textFieldTitle2("Description"),
                                  TextField(
                                    // minLines: 1,
                                    maxLines: 5,
                                    style: TextStyle(color: Colors.black),
                                    decoration: InputDecoration(
                                      hintText: "Description",
                                      hintStyle:
                                          TextStyle(color: Colors.black26),
                                      floatingLabelBehavior:
                                          FloatingLabelBehavior.never,
                                      // labelStyle: labelTextStyle,
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          width: 2,
                                          color: Colors.blueGrey,
                                        ),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          width: 2,
                                          color: Colors.blueGrey,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              )),
                            ],
                          ),
                        ),
                      )));
            });
          });
    },
    backgroundColor: Color(0xFF92B4EC),
    child: Theme(
        data: ThemeData(brightness: Brightness.light),
        child: Icon(
          Icons.add,
          color: Colors.white,
        )),
  );
}
