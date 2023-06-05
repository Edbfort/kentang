import 'package:flutter/material.dart';

class Sorter extends ChangeNotifier {
  Map<String, Map<String, String>> _items = {
    "Kaki William": {
      "nama": "Kaki William",
      "gudang": "Gudang A",
      "quantity": "6",
      "deskripsi": "Kaki kesukaan William",
      "manage_cost": "",
      "history": "{'stok':{},'harga':{}}"
    },
    "Babi": {
      "nama": "Babi",
      "gudang": "Gudang 2",
      "quantity": "13",
      "deskripsi": "Makanan kesukaan William",
      "manage_cost": "200000",
      "history": "{'stok':{},'harga':{}}"
    }
  };

  Map<String, Map<String, String>> get items => _items;

//////

  Map<String, Map<String, String>> _sortedItems = {
    "dummy": {
      "gudang": "dummy",
      "quantity": "dummy",
      "deskripsi": "dummy",
      "manage_cost": "dummy",
      "history": "{'stok':{},'harga':{}}"
    }
  };

  Map<String, Map<String, String>> get sortedItems => sortItems();

  set sortedItems(val) {
    _sortedItems = val;
    notifyListeners();
  }

//////

  Map<String, String> _pref = {
    "ascending": "0",
    "selected": "nama"
  }; // {"ascending":"1","selected":"name"}

  Map<String, String> get pref => _pref;

  set pref(val) {
    _pref = val;
    notifyListeners();
  }

/////

  Map<String, Map<String, String>> sortItems() {
    sortedItems = items;

    if (pref["ascending"] == "1") {
      _sortedItems = Map.fromEntries(_sortedItems.entries.toList()
        ..sort((e1, e2) => e1.value[pref["selected"]]
            .toString()
            .compareTo(e2.value[pref["selected"]].toString())));
    } else {
      _sortedItems = Map.fromEntries(_sortedItems.entries.toList()
        ..sort((e1, e2) => e2.value[pref["selected"]]
            .toString()
            .compareTo(e1.value[pref["selected"]].toString())));
    }

    notifyListeners();
    return _sortedItems;
  }
}
