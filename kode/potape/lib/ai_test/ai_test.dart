

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Recom extends ChangeNotifier {
  var _items = [
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
    {
      "id": "10001",
      "name": "Kentang Goreng",
      "tags": "gorengan",
      "stock": "1",
      "rating": "4.5",
      "sold": "2500",
      "cost": "12"
    },
    {
      "id": "10002",
      "name": "Kentang Panggang",
      "tags": "panggang",
      "stock": "1",
      "rating": "4.2",
      "sold": "1200",
      "cost": "18"
    },
    {
      "id": "10003",
      "name": "Kentang Keju Pedas",
      "tags": "keju,pedas",
      "stock": "1",
      "rating": "4.6",
      "sold": "550",
      "cost": "24"
    },
    {
      "id": "10004",
      "name": "Kentang Sambal Matah",
      "tags": "pedas",
      "stock": "1",
      "rating": "4.7",
      "sold": "600",
      "cost": "22"
    },
    {
      "id": "10005",
      "name": "Kentang Cheese",
      "tags": "keju",
      "stock": "1",
      "rating": "4.8",
      "sold": "800",
      "cost": "20"
    },
    {
      "id": "10006",
      "name": "Kentang BBQ",
      "tags": "bbq",
      "stock": "1",
      "rating": "4.5",
      "sold": "1500",
      "cost": "16"
    },
    {
      "id": "10007",
      "name": "Kentang Sweet Chili",
      "tags": "manis,pedas",
      "stock": "1",
      "rating": "4.4",
      "sold": "900",
      "cost": "20"
    },
    {
      "id": "10008",
      "name": "Kentang Wedges",
      "tags": "wedges",
      "stock": "1",
      "rating": "4.3",
      "sold": "1000",
      "cost": "14"
    },
    {
      "id": "10009",
      "name": "Kentang Garlic Parmesan",
      "tags": "bawang putih,keju",
      "stock": "1",
      "rating": "4.9",
      "sold": "400",
      "cost": "26"
    },
    {
      "id": "10010",
      "name": "Kentang Sour Cream",
      "tags": "cream",
      "stock": "1",
      "rating": "4.7",
      "sold": "700",
      "cost": "18"
    },
    {
      "id": "10011",
      "name": "Kentang Pedas",
      "tags": "pedas",
      "stock": "1",
      "rating": "4.8",
      "sold": "784",
      "cost": "14"
    },
    {
      "id": "10012",
      "name": "Kentang Balado",
      "tags": "pedas",
      "stock": "1",
      "rating": "4.6",
      "sold": "691",
      "cost": "16"
    },
    {
      "id": "10013",
      "name": "Kentang Manis",
      "tags": "manis",
      "stock": "1",
      "rating": "4.3",
      "sold": "600",
      "cost": "15"
    },
    {
      "id": "10014",
      "name": "Kentang Lada Hitam",
      "tags": "lada hitam",
      "stock": "1",
      "rating": "4.5",
      "sold": "550",
      "cost": "17"
    },
    {
      "id": "10015",
      "name": "Kentang Pedas Manis",
      "tags": "pedas,manis",
      "stock": "1",
      "rating": "4.7",
      "sold": "800",
      "cost": "19"
    },
    {
      "id": "10016",
      "name": "Kentang Saus BBQ",
      "tags": "bbq",
      "stock": "1",
      "rating": "4.4",
      "sold": "700",
      "cost": "18"
    },
    {
      "id": "10017",
      "name": "Kentang Keju Pedas Manis",
      "tags": "keju,pedas,manis",
      "stock": "1",
      "rating": "4.8",
      "sold": "400",
      "cost": "23"
    },
    {
      "id": "10018",
      "name": "Kentang Cabe Garam",
      "tags": "pedas,garam",
      "stock": "1",
      "rating": "4.6",
      "sold": "900",
      "cost": "15"
    },
    {
      "id": "10019",
      "name": "Kentang Garlic Mayo",
      "tags": "bawang putih,mayo",
      "stock": "1",
      "rating": "4.7",
      "sold": "600",
      "cost": "21"
    },
    {
      "id": "10020",
      "name": "Kentang Keju Mayo",
      "tags": "keju,mayo",
      "stock": "1",
      "rating": "4.5",
      "sold": "650",
      "cost": "20"
    },
    {
      "id": "10021",
      "name": "Kentang Bawang Putih",
      "tags": "bawang putih",
      "stock": "1",
      "rating": "4.3",
      "sold": "800",
      "cost": "17"
    },
    {
      "id": "10022",
      "name": "Kentang Cheese Bacon",
      "tags": "keju,bacon",
      "stock": "1",
      "rating": "4.9",
      "sold": "350",
      "cost": "25"
    },
    {
      "id": "10023",
      "name": "Kentang Pedas Keju",
      "tags": "pedas,keju",
      "stock": "1",
      "rating": "4.7",
      "sold": "700",
      "cost": "22"
    },
    {
      "id": "10024",
      "name": "Kentang Saus Tiram",
      "tags": "saus tiram",
      "stock": "1",
      "rating": "4.4",
      "sold": "500",
      "cost": "19"
    },
    {
      "id": "10025",
      "name": "Kentang Balut Ayam",
      "tags": "ayam",
      "stock": "1",
      "rating": "4.5",
      "sold": "450",
      "cost": "18"
    },
    {
      "id": "10026",
      "name": "Kentang Keju Pedas",
      "tags": "keju,pedas",
      "stock": "1",
      "rating": "4.6",
      "sold": "550",
      "cost": "21"
    },
    {
      "id": "10027",
      "name": "Kentang Saus Tomat",
      "tags": "saus tomat",
      "stock": "1",
      "rating": "4.3",
      "sold": "600",
      "cost": "16"
    },
    {
      "id": "10028",
      "name": "Kentang Bawang Merah",
      "tags": "bawang merah",
      "stock": "1",
      "rating": "4.4",
      "sold": "400",
      "cost": "17"
    },
    {
      "id": "10029",
      "name": "Kentang Saus BBQ Pedas",
      "tags": "bbq,pedas",
      "stock": "1",
      "rating": "4.5",
      "sold": "700",
      "cost": "19"
    },
    {
      "id": "10030",
      "name": "Kentang Saus Mentega",
      "tags": "mentega",
      "stock": "1",
      "rating": "4.7",
      "sold": "900",
      "cost": "20"
    },
    {
      "id": "10031",
      "name": "Kentang Pedas Saus Tiram",
      "tags": "pedas,saus tiram",
      "stock": "1",
      "rating": "4.6",
      "sold": "550",
      "cost": "22"
    },
    {
      "id": "10032",
      "name": "Kentang Keju Pedas Manis",
      "tags": "keju,pedas,manis",
      "stock": "1",
      "rating": "4.8",
      "sold": "600",
      "cost": "23"
    },
    {
      "id": "10033",
      "name": "Kentang Saus BBQ Keju",
      "tags": "bbq,keju",
      "stock": "1",
      "rating": "4.7",
      "sold": "700",
      "cost": "20"
    },
    {
      "id": "10034",
      "name": "Kentang Pedas Saus Tomat",
      "tags": "pedas,saus tomat",
      "stock": "1",
      "rating": "4.5",
      "sold": "400",
      "cost": "18"
    },
    {
      "id": "10035",
      "name": "Kentang Saus Pedas Manis",
      "tags": "pedas,manis",
      "stock": "1",
      "rating": "4.6",
      "sold": "500",
      "cost": "19"
    },
    {
      "id": "10036",
      "name": "Kentang Pedas Bawang Putih",
      "tags": "pedas,bawang putih",
      "stock": "1",
      "rating": "4.3",
      "sold": "300",
      "cost": "17"
    },
    {
      "id": "10037",
      "name": "Kentang Saus Tiram Pedas",
      "tags": "saus tiram,pedas",
      "stock": "1",
      "rating": "4.4",
      "sold": "600",
      "cost": "20"
    },
    {
      "id": "10038",
      "name": "Kentang Keju Pedas BBQ",
      "tags": "keju,pedas,bbq",
      "stock": "1",
      "rating": "4.7",
      "sold": "450",
      "cost": "22"
    },
    {
      "id": "10039",
      "name": "Kentang Saus BBQ Pedas Manis",
      "tags": "bbq,pedas,manis",
      "stock": "1",
      "rating": "4.8",
      "sold": "550",
      "cost": "23"
    },
    {
      "id": "10040",
      "name": "Kentang Keju BBQ Pedas",
      "tags": "keju,bbq,pedas",
      "stock": "1",
      "rating": "4.6",
      "sold": "400",
      "cost": "21"
    },
    {
      "id": "10041",
      "name": "Kentang Pedas Saus BBQ",
      "tags": "pedas,bbq",
      "stock": "1",
      "rating": "4.5",
      "sold": "350",
      "cost": "19"
    },
    {
      "id": "10042",
      "name": "Kentang Saus Mentega Pedas",
      "tags": "mentega,pedas",
      "stock": "1",
      "rating": "4.4",
      "sold": "500",
      "cost": "18"
    },
  ];

  List<Map<String, String>> get items => _items;

//////

  List<Map<String, String>> _recoitems = [
    {
      "poin": "0",
      "id": "0000000",
      "name": "dummy",
      "tags": "dummy",
      "stock": "0",
      'rating': "0",
      "sold": "0",
      "cost": "0"
    },
  ];

  List<Map<String, String>> get recoitems => recomend();

  set recoitems(val) {
    _recoitems = val;
    notifyListeners();
  }

//////

Map<String,Map<String, String>> _history={"dummy":{
      "poin": "0",
      "id": "0000000",
      "name": "dummy",
      "tags": "dummy",
      "stock": "0",
      'rating': "0",
      "sold": "0",
      "cost": "0"
    }}
    
Map<String,Map<String, String>> get history=>_history;

  set recoitems(val) {
    _recoitems = val;
    notifyListeners();
  }

  Map<String,Map<String, String>> 
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

  Map<String, int> _datreccost = {
    "50": 10,
    "16": 4,
    "12": 6,
  };

  Map<String, int> get datreccost => _datreccost;

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

  List<Map<String, String>> recomend() {
    var tmpitems = items;
    _recoitems = [];
    for (var i in tmpitems) {
      i["poin"] = "0";

      ///

      List<String>? tmpname = i["name"].toString().split(" ");
      tmpname.removeAt(0);
      for (var k in tmpname) {
        if (datrecname.containsKey(k)) {
          int? plus = datrecname[k]! * poin["name"]!;
          i["poin"] = (int.parse(i["poin"].toString()) + plus).toString();
        }
      }

      ///

      List<String>? tmptags = i["tags"].toString().split(",");
      for (var k in tmptags) {
        if (datrectags.containsKey(k)) {
          int? plus = datrectags[k]! * poin["tags"]!;
          i["poin"] = (int.parse(i["poin"].toString()) + plus).toString();
        }
      }

      ///
      int costrange = 5;
      int reduc = 20;
      int? tmpcost = int.parse(i["cost"].toString());

      for (int l = tmpcost - costrange; l != (tmpcost + costrange); l++) {
        if (datreccost.containsKey(l.toString())) {
          int? plus = datreccost[l.toString()]! * poin["cost"]!;
          i["poin"] = (int.parse(i["poin"].toString()) + plus).toString();
        }
      }

      ///
      _recoitems.add(i);
    }
    _recoitems
        .sort((a, b) => int.parse(b["sold"]!).compareTo(int.parse(a["sold"]!)));
    _recoitems.sort((a, b) => b["poin"]!.compareTo(a["poin"]!));
    notifyListeners();
    return _recoitems;
  }
}
