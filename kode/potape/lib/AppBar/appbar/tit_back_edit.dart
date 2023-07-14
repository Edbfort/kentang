import 'package:flutter/material.dart';

AppBar tit_back_edit_apbr(title_, itemName, detailsEdit, detailsEditChange) {
  return AppBar(
    leading: BackButton(),
    iconTheme: IconThemeData(color: Colors.white),
    backgroundColor: Colors.transparent,
    elevation: 0,
    centerTitle: true,
    title: Text(
      "Details",
      textAlign: TextAlign.center,
      style: TextStyle(fontWeight: FontWeight.bold),
    ),
    actions: [
      Container(
        margin: EdgeInsets.only(right: 8),
        child: detailsEdit == false
            ? IconButton(
                onPressed: () {
                  detailsEditChange(!detailsEdit);
                },
                icon: Icon(Icons.edit))
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
