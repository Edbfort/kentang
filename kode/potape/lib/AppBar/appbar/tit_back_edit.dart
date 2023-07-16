import 'package:flutter/material.dart';

AppBar tit_back_edit_apbr(
    title_, itemName, detailsEdit, detailsEditChange, detailsEditSetBaseText) {
  return AppBar(
    leading: BackButton(),
    iconTheme: IconThemeData(color: Colors.white),
    backgroundColor: Colors.transparent,
    elevation: 0,
    centerTitle: true,
    title: Text(
      detailsEdit == false ? "Details" : "Edit",
      textAlign: TextAlign.center,
      style: TextStyle(fontWeight: FontWeight.bold),
    ),
    actions: [
      Container(
        margin: EdgeInsets.only(right: 8),
        child: detailsEdit == false
            ? PopupMenuButton(
                itemBuilder: (context) {
                  return [
                    PopupMenuItem(
                      child: Text(
                        "Edit",
                        style: TextStyle(color: Colors.black),
                      ),
                      onTap: () {
                        detailsEditChange(!detailsEdit);
                        detailsEditSetBaseText();
                      },
                    ),
                    PopupMenuItem(
                      child: Text(
                        "Remove",
                        style: TextStyle(color: Colors.black),
                      ),
                      onTap: () {
                        print("dd");
                        showDialog(
                            context: context,
                            builder: (context) {
                              return Theme(
                                  data: ThemeData(brightness: Brightness.light),
                                  child: AlertDialog(
                                      title:
                                          Text('Do you really want to quit?'),
                                      actions: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: [
                                            TextButton(
                                                onPressed: () =>
                                                    Navigator.of(context)
                                                        .pop(false),
                                                child: const Text('Cancel')),
                                            Container(
                                              height: 14,
                                              child: VerticalDivider(
                                                color: Colors.black26,
                                                thickness: 1,
                                              ),
                                            ),
                                            TextButton(
                                                onPressed: () {},
                                                child: const Text('Yes')),
                                          ],
                                        ),
                                      ]));
                            });
                      },
                    ),
                  ];
                },
                color: Colors.white,
              )
            : TextButton(
                onPressed: () {
                  detailsEditChange(!detailsEdit);
                },
                child: Text(
                  "Save",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                )),
      )
    ],
  );
}
