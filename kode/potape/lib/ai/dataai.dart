import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Data extends ChangeNotifier {
  List<Map<String, String>> _items = [
    {
      "id": "0000001",
      "name": "Kentang Pedas",
      "tags": "pedas",
      "stock": "1",
      'rating': "4.8",
      "sold": "784",
      "cost": "14"
    },
    {
      "id": "0000002",
      "name": "Kentang Balado",
      "tags": "pedas",
      "stock": "1",
      "rating": "4.6",
      "sold": "691",
      "cost": "16"
    },
  ];

  List<Map<String, String>> get items => _items;

//////

  List<Map<String, String>> _recoitems = [
    {
      "id": "0000001",
      "name": "Kentang Pedas",
      "tags": "pedas",
      "stock": "1",
      'rating': "4.8",
      "sold": "784",
      "cost": "14"
    },
    {
      "id": "0000002",
      "name": "Kentang Balado",
      "tags": "pedas",
      "stock": "1",
      "rating": "4.6",
      "sold": "691",
      "cost": "16"
    },
  ];

  List<Map<String, String>> get recoitems => _recoitems;

  set recoitems(val) {
    recoitems = val;
    notifyListeners();
  }

//////

  Map<String, int> _datrecname = {
    "Pedas": 6,
  };

  Map<String, int> get datrecname => _datrecname;

  set datrecname(val) {
    recoitems = val;
    notifyListeners();
  }

//////

  Map<String, int> _datrectags = {
    "pedas": 2,
    "manis": 10,
  };

  Map<String, int> get datrectags => _datrectags;

  set datrectags(val) {
    recoitems = val;
    notifyListeners();
  }

//////

  Map<String, int> _datreccost = {
    "50": 10,
    "12": 3,
  };

  Map<String, int> get datreccost => _datreccost;

  set datreccost(val) {
    recoitems = val;
    notifyListeners();
  }

//////
}
