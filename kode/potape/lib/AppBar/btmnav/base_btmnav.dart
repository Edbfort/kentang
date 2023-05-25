import 'package:flutter/material.dart';

BottomNavigationBar base_btmnav_btmnav(btm_index, _onbtmtap, btmnavdata) {
  return BottomNavigationBar(
    backgroundColor: Color(0xFF92B4EC),
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
