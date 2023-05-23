import 'package:flutter/material.dart';

BottomNavigationBar btmnav_unselec_btmnav(btm_index, _onbtmtap) {
  return BottomNavigationBar(
    backgroundColor: Color(0xFF92B4EC),
    selectedItemColor: Color(0xFF43536C),
    type: BottomNavigationBarType.fixed,
    items: [
      BottomNavigationBarItem(
        icon: Icon(Icons.home),
        label: 'Home',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.store),
        label: 'Shop',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.shopping_basket),
        label: 'Cart',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.history),
        label: 'Purchase',
      ),
    ],
    currentIndex: btm_index,
    onTap: _onbtmtap,
  );
}
