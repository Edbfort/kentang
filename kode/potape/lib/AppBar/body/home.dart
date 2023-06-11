import 'package:flutter/material.dart';

Container home_body(context, controller, sortedItem) {
  Iterable data = sortedItem[sortedItem.keys.first]!["items"].values;
  Iterable names = sortedItem[sortedItem.keys.first]!["items"].keys;
  return Container(
    child: Column(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Container(
        height: MediaQuery.of(context).size.height / 3,
        color: Colors.green,
      ),
      Container(
        color: Colors.blue,
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
