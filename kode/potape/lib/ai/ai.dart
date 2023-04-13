import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'dataai.dart';

class Recom extends ChangeNotifier {
  List<Map<String, Object>> _items = [
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

  List<Map<String, Object>> get items => _items;

//////

  var _recoitems = [
    {
      "poin": 0,
      "id": "0000000",
      "name": "dummy",
      "tags": "dummy",
      "stock": "0",
      'rating': "0",
      "sold": "0",
      "cost": "0"
    },
  ];

  List<Map<String, Object>> get recoitems => recomend();

  set recoitems(val) {
    _recoitems = val;
    notifyListeners();
  }

//////

  Map<String, int> _datrecname = {
    "Pedas": 6,
  };

  Map<String, int> get datrecname => _datrecname;

  set datrecname(val) {
    _datrecname = val;
    notifyListeners();
  }

//////

  Map<String, int> _datrectags = {
    "pedas": 2,
    "manis": 10,
  };

  Map<String, int> get datrectags => _datrectags;

  set datrectags(val) {
    _datrectags = val;
    notifyListeners();
  }

//////

  Map<int, int> _datreccost = {
    50: 10,
    12: 3,
  };

  Map<int, int> get datreccost => _datreccost;

  set datreccost(val) {
    _datreccost = val;
    notifyListeners();
  }

//////

  var poin = {
    "name": 4,
    "tags": 5,
    "cost": 6,
  };

/////

  List<Map<String, Object>> recomend() {
    var tmpitems = items;
    _recoitems = [];
    for (var i in tmpitems) {
      i["poin"] = 0;

      ///

      List<String>? tmpname = i["name"].toString().split(" ");
      tmpname.removeAt(0);
      for (var k in tmpname) {
        if (datrecname.containsKey(k)) {
          int? plus = datrecname[k]! * poin["name"]!;
          i["poin"] = int.parse(i["poin"].toString()) + plus;
        }
      }

      ///

      List<String>? tmptags = i["tags"].toString().split(",");
      for (var k in tmptags) {
        if (datrectags.containsKey(k)) {
          int? plus = datrectags[k]! * poin["tags"]!;
          i["poin"] = int.parse(i["poin"].toString()) + plus;
        }
      }

      ///

      int? tmpcost = int.parse(i["cost"].toString());
      if (datreccost.containsKey(tmpcost)) {
        int? plus = datreccost[tmpcost]! * poin["cost"]!;
        i["poin"] = int.parse(i["poin"].toString()) + plus;
      }

      ///
      _recoitems.add(i);
    }
    notifyListeners();
    return _recoitems;
  }
}
