import 'package:flutter/material.dart';

BottomNavigationBar btmnav_unselec_btmnav(btm_index, _onbtmtap, btmnavdata) {
  return BottomNavigationBar(
    backgroundColor: Color(0xFF92B4EC),
    selectedItemColor: Color(0xFF43536C),
    type: BottomNavigationBarType.fixed,
    items: [
      for (Map<String, Icon> i in btmnavdata)
        BottomNavigationBarItem(
          icon: i.values.first,
          label: i.keys.first.toString(),
        ),
    ],
    currentIndex: btm_index,
    onTap: _onbtmtap,
  );
}
