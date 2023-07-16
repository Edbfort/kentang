import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../data/price/price_day.dart';

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
            {
              "status": "REMOVE",
              "quantity": "10",
              "harga": "46000",
              "time": "Jun. 1, 2023"
            },
            {
              "status": "REMOVE",
              "quantity": "10",
              "harga": "46000",
              "time": "Jun. 1, 2023"
            },
            {
              "status": "REMOVE",
              "quantity": "10",
              "harga": "46000",
              "time": "Jun. 1, 2023"
            },
            {
              "status": "REMOVE",
              "quantity": "10",
              "harga": "46000",
              "time": "Jun. 1, 2023"
            },
            {
              "status": "ADD",
              "quantity": "10",
              "harga": "46000",
              "time": "Jun. 1, 2023"
            },
            {
              "status": "REMOVE",
              "quantity": "10",
              "harga": "46000",
              "time": "Jun. 1, 2023"
            },
            {
              "status": "REMOVE",
              "quantity": "10",
              "harga": "46000",
              "time": "Jun. 1, 2023"
            },
            {
              "status": "REMOVE",
              "quantity": "10",
              "harga": "46000",
              "time": "Jun. 1, 2023"
            },
            {
              "status": "ADD",
              "quantity": "10",
              "harga": "46000",
              "time": "Jun. 1, 2023"
            },
            {
              "status": "REMOVE",
              "quantity": "10",
              "harga": "46000",
              "time": "Jun. 1, 2023"
            },
          ]
        },
        "Babi": {
          "gudang": "Gudang 2",
          "quantity": "13",
          "deskripsi": "Makanan kesukaan William",
          "manage_cost": "200000",
          "history": []
        },
        // "Barang A": {
        //   "gudang": "Gudang A",
        //   "quantity": "60",
        //   "deskripsi":
        //       "Kaki William adalah bagian tubuh yang terletak di bagian bawah dari tubuh manusia yang dikenal dengan sebutan anggota gerak. Kaki ini terhubung dengan tulang belakang melalui panggul dan memainkan peran yang sangat penting dalam mobilitas dan keseimbangan manusia.",
        //   "manage_cost": "0",
        //   "history": []
        // },
        // "Barang B": {
        //   "gudang": "Gudang 2",
        //   "quantity": "13",
        //   "deskripsi": "Makanan kesukaan William",
        //   "manage_cost": "200000",
        //   "history": []
        // },
        // "Barang C": {
        //   "gudang": "Gudang A",
        //   "quantity": "6",
        //   "deskripsi": "Kaki kesukaan William",
        //   "manage_cost": "0",
        //   "history": []
        // },
        // "Barang D": {
        //   "gudang": "Gudang 2",
        //   "quantity": "13",
        //   "deskripsi": "Makanan kesukaan William",
        //   "manage_cost": "200000",
        //   "history": []
        // },
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
            {
              "status": "REMOVE",
              "quantity": "10",
              "harga": "46000",
              "time": "Jun. 1, 2023"
            },
            {
              "status": "REMOVE",
              "quantity": "10",
              "harga": "46000",
              "time": "Jun. 1, 2023"
            },
            {
              "status": "REMOVE",
              "quantity": "10",
              "harga": "46000",
              "time": "Jun. 1, 2023"
            },
            {
              "status": "REMOVE",
              "quantity": "10",
              "harga": "46000",
              "time": "Jun. 1, 2023"
            },
            {
              "status": "ADD",
              "quantity": "10",
              "harga": "46000",
              "time": "Jun. 1, 2023"
            },
            {
              "status": "REMOVE",
              "quantity": "10",
              "harga": "46000",
              "time": "Jun. 1, 2023"
            },
            {
              "status": "REMOVE",
              "quantity": "10",
              "harga": "46000",
              "time": "Jun. 1, 2023"
            },
            {
              "status": "REMOVE",
              "quantity": "10",
              "harga": "46000",
              "time": "Jun. 1, 2023"
            },
            {
              "status": "ADD",
              "quantity": "10",
              "harga": "46000",
              "time": "Jun. 1, 2023"
            },
            {
              "status": "REMOVE",
              "quantity": "10",
              "harga": "46000",
              "time": "Jun. 1, 2023"
            },
          ]
        },
        "Babi": {
          "gudang": "Gudang 2",
          "quantity": "13",
          "deskripsi": "Makanan kesukaan William",
          "manage_cost": "200000",
          "history": []
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
            {
              "status": "REMOVE",
              "quantity": "10",
              "harga": "46000",
              "time": "Jun. 1, 2023"
            },
            {
              "status": "REMOVE",
              "quantity": "10",
              "harga": "46000",
              "time": "Jun. 1, 2023"
            },
            {
              "status": "REMOVE",
              "quantity": "10",
              "harga": "46000",
              "time": "Jun. 1, 2023"
            },
            {
              "status": "REMOVE",
              "quantity": "10",
              "harga": "46000",
              "time": "Jun. 1, 2023"
            },
            {
              "status": "ADD",
              "quantity": "10",
              "harga": "46000",
              "time": "Jun. 1, 2023"
            },
            {
              "status": "REMOVE",
              "quantity": "10",
              "harga": "46000",
              "time": "Jun. 1, 2023"
            },
            {
              "status": "REMOVE",
              "quantity": "10",
              "harga": "46000",
              "time": "Jun. 1, 2023"
            },
            {
              "status": "REMOVE",
              "quantity": "10",
              "harga": "46000",
              "time": "Jun. 1, 2023"
            },
            {
              "status": "ADD",
              "quantity": "10",
              "harga": "46000",
              "time": "Jun. 1, 2023"
            },
            {
              "status": "REMOVE",
              "quantity": "10",
              "harga": "46000",
              "time": "Jun. 1, 2023"
            },
          ]
        },
        "Babi": {
          "gudang": "Gudang 2",
          "quantity": "13",
          "deskripsi": "Makanan kesukaan William",
          "manage_cost": "200000",
          "history": []
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
          "history": []
        },
        "Promag 10 Tablet": {
          "gudang": "Bawah Meja",
          "quantity": "4",
          "deskripsi": "Makanan kesukaan William",
          "manage_cost": "0",
          "history": []
        },
        "Binder Clips no.200 JOYKO": {
          "gudang": "Sepatu William",
          "quantity": "12",
          "deskripsi": "Snack kesukaan William",
          "manage_cost": "0",
          "history": []
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

  void changePassword(email, newPassword) {
    for (String usernameCP in _server_profiles.keys) {
      if (_server_profiles[usernameCP]!["profileData"]!["email"].toString() ==
          email.toString()) {
        _server_profiles[usernameCP]!["profileData"]!["password"] =
            newPassword.toString();
        break;
      }
    }
    notifyListeners();
  }

  void manageItemAddHistory(itemName, type, quantity) {
    int tmpQuantity = quantity;
    String username = _current_items.keys.first.toString();
    int basePrice = int.parse(price_day.first[itemName]!);

    /// Penggunaan Package Intl
    String currentTime = DateFormat('MMM. d, y').format(DateTime.now());

    if (type == "Remove") {
      tmpQuantity = tmpQuantity * -1;
    }
    _current_items[username]!["items"]![itemName]["quantity"] = (int.parse(
                _current_items[username]!["items"]![itemName]["quantity"]
                    .toString()) +
            tmpQuantity)
        .toString();
    _current_items[username]!["items"]![itemName]["history"].insert(
      0,
      {
        "status": type.toString().toUpperCase(),
        "quantity": quantity.toString(),
        "harga": (quantity * basePrice).toString(),
        "time": currentTime
      },
    );

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
        "dummyItem2": {
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
