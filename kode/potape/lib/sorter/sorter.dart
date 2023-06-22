import 'package:flutter/material.dart';

class Sorter extends ChangeNotifier {
  Map<String, Map<String, Map<String, dynamic>>> _current_items = {
    "WilliamTolol": {
      "profileData": {"email": "william@gmail.com", "password": "bebas"},
      "items": {
        "Kaki William": {
          "gudang": "Gudang A",
          "quantity": "6",
          "deskripsi": "Kaki kesukaan William",
          "manage_cost": "0",
          "history": [
            {"quantity": "", "harga": "", "time": ""},
          ]
        },
        "Babi": {
          "gudang": "Gudang 2",
          "quantity": "13",
          "deskripsi": "Makanan kesukaan William",
          "manage_cost": "200000",
          "history": [
            {"quantity": "", "harga": "", "time": ""},
          ]
        },
        "Barang A": {
          "gudang": "Gudang A",
          "quantity": "60",
          "deskripsi":
              "Kaki William adalah bagian tubuh yang terletak di bagian bawah dari tubuh manusia yang dikenal dengan sebutan anggota gerak. Kaki ini terhubung dengan tulang belakang melalui panggul dan memainkan peran yang sangat penting dalam mobilitas dan keseimbangan manusia.",
          "manage_cost": "0",
          "history": [
            {"quantity": "", "harga": "", "time": ""},
          ]
        },
        "Barang B": {
          "gudang": "Gudang 2",
          "quantity": "13",
          "deskripsi": "Makanan kesukaan William",
          "manage_cost": "200000",
          "history": [
            {"quantity": "", "harga": "", "time": ""},
          ]
        },
        "Barang C": {
          "gudang": "Gudang A",
          "quantity": "6",
          "deskripsi": "Kaki kesukaan William",
          "manage_cost": "0",
          "history": [
            {"quantity": "", "harga": "", "time": ""},
          ]
        },
        "Barang D": {
          "gudang": "Gudang 2",
          "quantity": "13",
          "deskripsi": "Makanan kesukaan William",
          "manage_cost": "200000",
          "history": [
            {"quantity": "", "harga": "", "time": ""},
          ]
        },
      },
    },
  };
  Map<String, Map<String, Map<String, dynamic>>> get current_items =>
      _current_items;

//////

  Map<String, Map<String, Map<String, dynamic>>> _local_profiles = {
    "WilliamTolol": {
      "profileData": {"email": "william@gmail.com", "password": "bebas"},
      "items": {
        "Kaki William": {
          "gudang": "Gudang A",
          "quantity": "6",
          "deskripsi": "Kaki kesukaan William",
          "manage_cost": "0",
          "history": [
            {"quantity": "", "harga": "", "time": ""},
          ]
        },
        "Babi": {
          "gudang": "Gudang 2",
          "quantity": "13",
          "deskripsi": "Makanan kesukaan William",
          "manage_cost": "200000",
          "history": [
            {"quantity": "", "harga": "", "time": ""},
          ]
        },
      },
    },
  };

  Map<String, Map<String, Map<String, dynamic>>> get local_profiles =>
      _local_profiles;

  void loginProfile(username) {
    _local_profiles[username.toString()] =
        _server_profiles[username.toString()]!;
    _current_items.clear();
    _current_items[username.toString()] =
        _server_profiles[username.toString()]!;
    notifyListeners();
  }
//////

  Map<String, Map<String, Map<String, dynamic>>> _server_profiles = {
    "WilliamTolol": {
      "profileData": {"email": "william@gmail.com", "password": "bebas"},
      "items": {
        "Kaki William": {
          "gudang": "Gudang A",
          "quantity": "6",
          "deskripsi": "Kaki kesukaan William",
          "manage_cost": "0",
          "history": [
            {"quantity": "", "harga": "", "time": ""},
          ]
        },
        "Babi": {
          "gudang": "Gudang 2",
          "quantity": "13",
          "deskripsi": "Makanan kesukaan William",
          "manage_cost": "200000",
          "history": [
            {"quantity": "", "harga": "", "time": ""},
          ]
        },
      },
    },
    "ElwinLagiTidur": {
      "profileData": {
        "email": "belumMakan@gmail.com",
        "password": "f9b739ee417c36926868a703a57f2b68"
      },
      "items": {
        "Bir Bintang Can 500ml": {
          "gudang": "Rumah Richard",
          "quantity": "171",
          "deskripsi": "Minuman kesukaan William",
          "manage_cost": "311520",
          "history": [
            {"quantity": "", "harga": "", "time": ""},
          ]
        },
        "Promag 10 Tablet": {
          "gudang": "Bawah Meja",
          "quantity": "4",
          "deskripsi": "Makanan kesukaan William",
          "manage_cost": "0",
          "history": [
            {"quantity": "", "harga": "", "time": ""},
          ]
        },
        "Binder Clips no.200 JOYKO": {
          "gudang": "Sepatu William",
          "quantity": "12",
          "deskripsi": "Snack kesukaan William",
          "manage_cost": "0",
          "history": [
            {"quantity": "", "harga": "", "time": ""},
          ]
        },
      },
    },
    "EdbertXWilliam": {
      "profileData": {
        "email": "willaimSayangKu@gmail.com",
        "password": "05052023"
      },
      "items": {},
    },
  };

  Map<String, Map<String, Map<String, dynamic>>> get server_profiles =>
      _server_profiles;

  void addNewProfile(username, profileData) {
    _server_profiles[username.toString()] = {
      "profileData": profileData,
      "items": {},
    };
    _local_profiles[username.toString()] = {
      "profileData": profileData,
      "items": {},
    };
    _current_items.clear();
    _current_items[username.toString()] = {
      "profileData": profileData,
      "items": {},
    };
    notifyListeners();
  }
//////

  Map<String, Map<String, Map<String, dynamic>>> _sortedItems = {
    "dummyProfile": {
      "profileData": {"email": "dummy@gmail.com", "password": "dummy"},
      "items": {
        "dummyItem": {
          "gudang": "dummy",
          "quantity": "dummy",
          "deskripsi": "dummy",
          "manage_cost": "dummy",
          "history": [
            {"quantity": "dummy", "harga": "dummy", "time": "dd/mm/yyyy"},
            {"quantity": "dummy", "harga": "dummy", "time": "dd/mm/yyyy"},
            {"quantity": "dummy", "harga": "dummy", "time": "dd/mm/yyyy"}
          ]
        },
        "dummyItem": {
          "gudang": "dummy",
          "quantity": "dummy",
          "deskripsi": "dummy",
          "manage_cost": "dummy",
          "history": [
            {"quantity": "dummy", "harga": "dummy", "time": "dd/mm/yyyy"},
            {"quantity": "dummy", "harga": "dummy", "time": "dd/mm/yyyy"},
            {"quantity": "dummy", "harga": "dummy", "time": "dd/mm/yyyy"}
          ]
        }
      },
    }
  };

  Map<String, Map<String, Map<String, dynamic>>> get sortedItems => sortItems();

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

  Map<String, Map<String, Map<String, dynamic>>> sortItems() {
    // print(current_items[current_items.keys.first]!["items"]);
    sortedItems = current_items;

    if (pref["ascending"] == "1") {
      _sortedItems[current_items.keys.first]!["items"] = Map.fromEntries(
          _sortedItems[current_items.keys.first]!["items"]!.entries.toList()
            ..sort((e1, e2) => e1.value[pref["selected"]]
                .toString()
                .compareTo(e2.value[pref["selected"]].toString())));
    } else {
      _sortedItems[current_items.keys.first]!["items"] = Map.fromEntries(
          _sortedItems[current_items.keys.first]!["items"]!.entries.toList()
            ..sort((e1, e2) => e2.value[pref["selected"]]
                .toString()
                .compareTo(e1.value[pref["selected"]].toString())));
    }

    notifyListeners();
    return _sortedItems;
  }
}
