import 'package:flutter/material.dart';

Drawer base_drawer_drawer(
    active_, drawer_pages, _ondrawertap, context, current_profile) {
  return Drawer(
    child: ListView(children: [
      Container(
        height: 16,
      ),
      for (int counter = 0; counter < drawer_pages.length; counter++)
        GestureDetector(
          onTap: () {
            _ondrawertap(counter, context);
          },
          child: ListTile(
            leading: drawer_pages[counter].values.first,
            title: Text(drawer_pages[counter].keys.first.toString()),
            selected: int.parse(active_) == counter,
          ),
        )
    ]),
  );
}
