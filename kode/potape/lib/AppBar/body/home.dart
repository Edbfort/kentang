import 'package:flutter/material.dart';

Container home_body(context, controller, sortedItem) {
  Iterable data = sortedItem[sortedItem.keys.first]!["items"].values;
  Iterable names = sortedItem[sortedItem.keys.first]!["items"].keys;
  return Container(
    color: Color(0xFF92B4EC),
    child: Column(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Container(
        height: MediaQuery.of(context).size.height / 3,
        color: Colors.green,
      ),
      Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(30),
            topLeft: Radius.circular(30),
          ),
          color: Colors.white,
        ),
        height: MediaQuery.of(context).size.height / 2,
        child: ListView.separated(
            itemBuilder: (context, index) {
              return Text(
                names.elementAt(index).toString(),
                style: TextStyle(
                  color: Colors.black54,
                ),
              );
            },
            separatorBuilder: (context, index) {
              return Divider(
                color: Colors.black54,
              );
            },
            itemCount: data.length),
      )
    ]),
  );
}
