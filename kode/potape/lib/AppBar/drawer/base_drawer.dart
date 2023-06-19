import 'package:flutter/material.dart';

Drawer base_drawer_drawer(
    active_, drawer_pages, _ondrawertap, context, current_profile) {
  return Drawer(

    child: ListView(children: [
      
      DrawerHeader(
          child: Column(
        children: [
          CircleAvatar(
            backgroundColor: Colors.brown.shade800,
            child: const Text('AH'),
            radius: 50,
          ),
          Text(current_profile["email"]!)
        ],
      )),
      for (int counter = 0; counter < drawer_pages.length; counter++)
        ListTile(
          leading: drawer_pages[counter].values.first,
          title: Text(drawer_pages[counter].keys.first.toString()),
          selected: int.parse(active_) == counter,
          onTap: () {
            _ondrawertap(counter, context);
          },
        )
    ]),
  );
}
