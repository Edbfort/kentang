import 'package:flutter/material.dart';

import 'login.dart';

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

Container insertitem_body(context) {
  return Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.only(
        topRight: Radius.circular(30),
        topLeft: Radius.circular(30),
      ),
      color: Colors.white,
    ),
    width: MediaQuery.of(context).size.width,
    child: Container(
      margin: EdgeInsets.only(
        top: MediaQuery.of(context).size.height / 30,
        left: MediaQuery.of(context).size.width / 30,
        right: MediaQuery.of(context).size.width / 30,
        bottom: MediaQuery.of(context).size.width / 20,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              textFieldTitle2("Nama Barang"),
              TextField(
                // inputFormatters: [
                //   FilteringTextInputFormatter.allow(RegExp(r'[0-9a-zA-Z]'))
                // ],
                style: TextStyle(color: Colors.black),
                decoration: InputDecoration(
                  floatingLabelBehavior: FloatingLabelBehavior.never,
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
              textFieldTitle2("Gudang"),
              TextField(
                style: TextStyle(color: Colors.black),
                decoration: InputDecoration(
                  floatingLabelBehavior: FloatingLabelBehavior.never,
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
              textFieldTitle2("Deskripsi"),
              TextField(
                // minLines: 1,
                maxLines: 5,
                style: TextStyle(color: Colors.black),
                decoration: InputDecoration(
                  floatingLabelBehavior: FloatingLabelBehavior.never,
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
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        textFieldTitle2("Manage Cost"),
                        TextField(
                          keyboardType: TextInputType.number,
                          // inputFormatters: [
                          //   FilteringTextInputFormatter.allow(RegExp(r'[0-9a-zA-Z]'))
                          // ],
                          style: TextStyle(color: Colors.black),
                          decoration: InputDecoration(
                            floatingLabelBehavior: FloatingLabelBehavior.never,
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
                      ]),
                ),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        textFieldTitle2("Quantity"),
                        TextField(
                          keyboardType: TextInputType.number,
                          style: TextStyle(color: Colors.black),
                          decoration: InputDecoration(
                            floatingLabelBehavior: FloatingLabelBehavior.never,
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
                      ]),
                ),
              ]),
            ],
          )),
          Container(
              child: SizedBox(
            width: 180,
            height: 50,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                // ignore: deprecated_member_use
                primary: const Color(0xFF92B4EC),
                shape: RoundedRectangleBorder(
                    // borderRadius: BorderRadius.circular(30.0),
                    ),
              ),
              onPressed: () {},
              child: Text("Masukan Barang"),
            ),
          )),
        ],
      ),
    ),
  );
}
