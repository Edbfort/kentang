import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Recom extends ChangeNotifier {
  Map<String, Map<String, String>> _items = {
    "00001": {
      "name": "Kentang Pedas",
      "tags": "pedas",
      "stock": "1",
      'rating': "4.8",
      "sold": "784",
      "cost": "14"
    },
    "00002": {
      "name": "Kentang Balado",
      "tags": "pedas",
      "stock": "1",
      "rating": "4.6",
      "sold": "691",
      "cost": "16"
    },
    "10001": {
      "name": "Kentang Goreng",
      "tags": "gorengan",
      "stock": "1",
      "rating": "4.5",
      "sold": "2500",
      "cost": "12"
    },
    "10002": {
      "name": "Kentang Panggang",
      "tags": "panggang",
      "stock": "1",
      "rating": "4.2",
      "sold": "1200",
      "cost": "18"
    },
    "10003": {
      "name": "Kentang Keju Pedas",
      "tags": "keju,pedas",
      "stock": "1",
      "rating": "4.6",
      "sold": "550",
      "cost": "24"
    },
    "10004": {
      "name": "Kentang Sambal Matah",
      "tags": "pedas",
      "stock": "1",
      "rating": "4.7",
      "sold": "600",
      "cost": "22"
    },
    "10005": {
      "name": "Kentang Cheese",
      "tags": "keju",
      "stock": "1",
      "rating": "4.8",
      "sold": "800",
      "cost": "20"
    },
    "10006": {
      "name": "Kentang BBQ",
      "tags": "bbq",
      "stock": "1",
      "rating": "4.5",
      "sold": "1500",
      "cost": "16"
    },
    "10007": {
      "name": "Kentang Sweet Chili",
      "tags": "manis,pedas",
      "stock": "1",
      "rating": "4.4",
      "sold": "900",
      "cost": "20"
    },
    "10008": {
      "name": "Kentang Wedges",
      "tags": "wedges",
      "stock": "1",
      "rating": "4.3",
      "sold": "1000",
      "cost": "14"
    },
    "10009": {
      "name": "Kentang Garlic Parmesan",
      "tags": "bawang putih,keju",
      "stock": "1",
      "rating": "4.9",
      "sold": "400",
      "cost": "26"
    },
    "10010": {
      "name": "Kentang Sour Cream",
      "tags": "cream",
      "stock": "1",
      "rating": "4.7",
      "sold": "700",
      "cost": "18"
    },
    "10011": {
      "name": "Kentang Pedas",
      "tags": "pedas",
      "stock": "1",
      "rating": "4.8",
      "sold": "784",
      "cost": "14"
    },
    "10012": {
      "name": "Kentang Balado",
      "tags": "pedas",
      "stock": "1",
      "rating": "4.6",
      "sold": "691",
      "cost": "16"
    },
    "10013": {
      "name": "Kentang Manis",
      "tags": "manis",
      "stock": "1",
      "rating": "4.3",
      "sold": "600",
      "cost": "15"
    },
    "10014": {
      "name": "Kentang Lada Hitam",
      "tags": "lada hitam",
      "stock": "1",
      "rating": "4.5",
      "sold": "550",
      "cost": "17"
    },
    "10015": {
      "name": "Kentang Pedas Manis",
      "tags": "pedas,manis",
      "stock": "1",
      "rating": "4.7",
      "sold": "800",
      "cost": "19"
    },
    "10016": {
      "name": "Kentang Saus BBQ",
      "tags": "bbq",
      "stock": "1",
      "rating": "4.4",
      "sold": "700",
      "cost": "18"
    },
    "10017": {
      "name": "Kentang Keju Pedas Manis",
      "tags": "keju,pedas,manis",
      "stock": "1",
      "rating": "4.8",
      "sold": "400",
      "cost": "23"
    },
    "10018": {
      "name": "Kentang Cabe Garam",
      "tags": "pedas,garam",
      "stock": "1",
      "rating": "4.6",
      "sold": "900",
      "cost": "15"
    },
    "10019": {
      "name": "Kentang Garlic Mayo",
      "tags": "bawang putih,mayo",
      "stock": "1",
      "rating": "4.7",
      "sold": "600",
      "cost": "21"
    },
    "10020": {
      "name": "Kentang Keju Mayo",
      "tags": "keju,mayo",
      "stock": "1",
      "rating": "4.5",
      "sold": "650",
      "cost": "20"
    },
    "10021": {
      "name": "Kentang Bawang Putih",
      "tags": "bawang putih",
      "stock": "1",
      "rating": "4.3",
      "sold": "800",
      "cost": "17"
    },
    "10022": {
      "name": "Kentang Cheese Bacon",
      "tags": "keju,bacon",
      "stock": "1",
      "rating": "4.9",
      "sold": "350",
      "cost": "25"
    },
    "10023": {
      "name": "Kentang Pedas Keju",
      "tags": "pedas,keju",
      "stock": "1",
      "rating": "4.7",
      "sold": "700",
      "cost": "22"
    },
    "10024": {
      "name": "Kentang Saus Tiram",
      "tags": "saus tiram",
      "stock": "1",
      "rating": "4.4",
      "sold": "500",
      "cost": "19"
    },
    "10025": {
      "name": "Kentang Balut Ayam",
      "tags": "ayam",
      "stock": "1",
      "rating": "4.5",
      "sold": "450",
      "cost": "18"
    },
    "10026": {
      "name": "Kentang Keju Pedas",
      "tags": "keju,pedas",
      "stock": "1",
      "rating": "4.6",
      "sold": "550",
      "cost": "21"
    },
    "10027": {
      "name": "Kentang Saus Tomat",
      "tags": "saus tomat",
      "stock": "1",
      "rating": "4.3",
      "sold": "600",
      "cost": "16"
    },
    "10028": {
      "name": "Kentang Bawang Merah",
      "tags": "bawang merah",
      "stock": "1",
      "rating": "4.4",
      "sold": "400",
      "cost": "17"
    },
    "10029": {
      "name": "Kentang Saus BBQ Pedas",
      "tags": "bbq,pedas",
      "stock": "1",
      "rating": "4.5",
      "sold": "700",
      "cost": "19"
    },
    "10030": {
      "name": "Kentang Saus Mentega",
      "tags": "mentega",
      "stock": "1",
      "rating": "4.7",
      "sold": "900",
      "cost": "20"
    },
    "10031": {
      "name": "Kentang Pedas Saus Tiram",
      "tags": "pedas,saus tiram",
      "stock": "1",
      "rating": "4.6",
      "sold": "550",
      "cost": "22"
    },
    "10032": {
      "name": "Kentang Keju Pedas Manis",
      "tags": "keju,pedas,manis",
      "stock": "1",
      "rating": "4.8",
      "sold": "600",
      "cost": "23"
    },
    "10033": {
      "name": "Kentang Saus BBQ Keju",
      "tags": "bbq,keju",
      "stock": "1",
      "rating": "4.7",
      "sold": "700",
      "cost": "20"
    },
    "10034": {
      "name": "Kentang Pedas Saus Tomat",
      "tags": "pedas,saus tomat",
      "stock": "1",
      "rating": "4.5",
      "sold": "400",
      "cost": "18"
    },
    "10035": {
      "name": "Kentang Saus Pedas Manis",
      "tags": "pedas,manis",
      "stock": "1",
      "rating": "4.6",
      "sold": "500",
      "cost": "19"
    },
    "10036": {
      "name": "Kentang Pedas Bawang Putih",
      "tags": "pedas,bawang putih",
      "stock": "1",
      "rating": "4.3",
      "sold": "300",
      "cost": "17"
    },
    "10037": {
      "name": "Kentang Saus Tiram Pedas",
      "tags": "saus tiram,pedas",
      "stock": "1",
      "rating": "4.4",
      "sold": "600",
      "cost": "20"
    },
    "10038": {
      "name": "Kentang Keju Pedas BBQ",
      "tags": "keju,pedas,bbq",
      "stock": "1",
      "rating": "4.7",
      "sold": "450",
      "cost": "22"
    },
    "10039": {
      "name": "Kentang Saus BBQ Pedas Manis",
      "tags": "bbq,pedas,manis",
      "stock": "1",
      "rating": "4.8",
      "sold": "550",
      "cost": "23"
    },
    "10040": {
      "name": "Kentang Keju BBQ Pedas",
      "tags": "keju,bbq,pedas",
      "stock": "1",
      "rating": "4.6",
      "sold": "400",
      "cost": "21"
    },
    "10041": {
      "name": "Kentang Pedas Saus BBQ",
      "tags": "pedas,bbq",
      "stock": "1",
      "rating": "4.5",
      "sold": "350",
      "cost": "19"
    },
    "10042": {
      "name": "Kentang Saus Mentega Pedas",
      "tags": "mentega,pedas",
      "stock": "1",
      "rating": "4.4",
      "sold": "500",
      "cost": "18"
    },
  };

  Map<String, Map<String, String>> get items => _items;

//////

  Map<String, Map<String, String>> _recoitems = {
    "0000000": {
      "poin": "0",
      "name": "dummy",
      "tags": "dummy",
      "stock": "0",
      'rating': "0",
      "sold": "0",
      "cost": "0",
    }
  };

  Map<String, Map<String, String>> get recoitems => recomend();

  set recoitems(val) {
    _recoitems = val;
    notifyListeners();
  }

//////

  Map<String, String> _history = {"10040": "2"}; // {"0000001":"1"}

  Map<String, String> get history => _history;

  set history(val) {
    _history = val;
    notifyListeners();
  }

  void historyadd(id) {
    if (history.containsKey(id)) {}
    history[id] = (int.parse(history[id].toString()) + 1).toString();
    notifyListeners();
  }

  //////

  Map<String, int> _datrecname = {
    "dummy": -1,
  };

  Map<String, int> get datrecname => getdatrecname();

  set datrecname(val) {
    _datrecname = val;
    notifyListeners();
  }

//////

  Map<String, int> getdatrecname() {
    var temphisotry = history;
    Map<String, int> tempdatrecname = {};
    for (var i in temphisotry.keys) {
      List<String>? tmpname = items[i]!["name"].toString().split(" ");
      tmpname.removeAt(0);
      for (var k in tmpname) {
        if (tempdatrecname.containsKey(k)) {
          tempdatrecname[k] = tempdatrecname[k]! + 1;
        } else {
          tempdatrecname[k] = 1;
        }
      }
    }
    datrecname = tempdatrecname;
    notifyListeners();
    return tempdatrecname;
  }

//////

  Map<String, int> _datrectags = {
    "dummy": -1,
  };

  Map<String, int> get datrectags => getdatrectags();

  set datrectags(val) {
    _datrectags = val;
    notifyListeners();
  }

/////

  Map<String, int> getdatrectags() {
    var temphisotry = history;
    Map<String, int> tempgetdatrectags = {};
    for (var i in temphisotry.keys) {
      List<String>? tmptags = items[i]!["tags"].toString().split(",");

      tmptags.removeAt(0);
      for (var k in tmptags) {
        if (tempgetdatrectags.containsKey(k)) {
          tempgetdatrectags[k] = tempgetdatrectags[k]! + 1;
        } else {
          tempgetdatrectags[k] = 1;
        }
      }
    }
    datrectags = tempgetdatrectags;
    notifyListeners();
    return tempgetdatrectags;
  }

//////

  Map<String, int> _datreccost = {
    "50": 10,
    "16": 4,
    "12": 6,
  };

  Map<String, int> get datreccost => getdatreccost();

  set datreccost(val) {
    _datreccost = val;
    notifyListeners();
  }

//////

  Map<String, int> getdatreccost() {
    var temphisotry = history;
    Map<String, int> tempgetdatreccost = {};
    for (var i in temphisotry.keys) {
      String? tmpcost = items[i]!["cost"].toString();

      if (tempgetdatreccost.containsKey(tmpcost)) {
        tempgetdatreccost[tmpcost] = tempgetdatreccost[tmpcost]! + 1;
      } else {
        tempgetdatreccost[tmpcost] = 1;
      }
    }

    datreccost = tempgetdatreccost;
    notifyListeners();
    return tempgetdatreccost;
  }

//////
  var poin = {
    "name": 4,
    "tags": 5,
    "cost": 6,
  };

/////

  Map<String, Map<String, String>> recomend() {
    var tmpitems = items;
    _recoitems = {};
    Map<String, int> drname = datrecname;
    Map<String, int> drtags = datrectags;
    Map<String, int> drcost = datreccost;
    tmpitems.forEach((key, i) {
      i["poin"] = "0";

      ///

      List<String>? tmpname = i["name"].toString().split(" ");
      tmpname.removeAt(0);
      for (var k in tmpname) {
        if (drname.containsKey(k)) {
          int? plus = drname[k]! * poin["name"]!;
          i["poin"] = (int.parse(i["poin"].toString()) + plus).toString();
        }
      }

      ///

      List<String>? tmptags = i["tags"].toString().split(",");
      for (var k in tmptags) {
        if (drtags.containsKey(k)) {
          int? plus = drtags[k]! * poin["tags"]!;
          i["poin"] = (int.parse(i["poin"].toString()) + plus).toString();
        }
      }

      ///
      int costrange = 5;
      int reduc = 20;
      int? tmpcost = int.parse(i["cost"].toString());

      for (int l = tmpcost - costrange; l != (tmpcost + costrange); l++) {
        if (drcost.containsKey(l.toString())) {
          int? plus = drcost[l.toString()]! * poin["cost"]!;
          i["poin"] = (int.parse(i["poin"].toString()) + plus).toString();
        }
      }

      ///
      _recoitems[key] = i;
    });
    _recoitems = Map.fromEntries(_recoitems.entries.toList()
      ..sort((e1, e2) => int.parse(e2.value["sold"].toString())
          .compareTo(int.parse(e1.value["sold"].toString()))));
    _recoitems = Map.fromEntries(_recoitems.entries.toList()
      ..sort((e1, e2) => int.parse(e2.value["poin"].toString())
          .compareTo(int.parse(e1.value["poin"].toString()))));

    notifyListeners();
    return _recoitems;
  }
}
