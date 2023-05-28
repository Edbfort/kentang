import 'package:flutter/material.dart';

Drawer base_drawer_drawer(active_, drawer_pages, _ondrawertap) {
  return Drawer(
    child: ListView(children: [
      for (int counter = 0; counter < drawer_pages.length; counter++)
        ListTile(
          leading: Icon(Icons.cabin),
          title: Text(drawer_pages[counter]),
          selected: int.parse(active_) == counter,
          onTap: () {
            _ondrawertap(counter);
          },
        )
    ]),
  );
}
