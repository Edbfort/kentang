import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'dataai.dart';

class Recom extends ChangeNotifier {
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
    {
      "id": "10001",
      "name": "Kentang Goreng",
      "tags": "makanan,gorengan",
      "stock": "10",
      "rating": "4.5",
      "sold": "2500",
      "cost": "12"
    },
    {
      "id": "10002",
      "name": "Kentang Panggang",
      "tags": "makanan,panggang",
      "stock": "5",
      "rating": "4.2",
      "sold": "1200",
      "cost": "18"
    },
    {
      "id": "10003",
      "name": "Kentang Keju Pedas",
      "tags": "makanan,keju,pedas",
      "stock": "4",
      "rating": "4.6",
      "sold": "550",
      "cost": "24"
    },
    {
      "id": "10004",
      "name": "Kentang Sambal Matah",
      "tags": "makanan,pedas",
      "stock": "2",
      "rating": "4.7",
      "sold": "600",
      "cost": "22"
    },
    {
      "id": "10005",
      "name": "Kentang Cheese",
      "tags": "makanan,keju",
      "stock": "3",
      "rating": "4.8",
      "sold": "800",
      "cost": "20"
    },
    {
      "id": "10006",
      "name": "Kentang BBQ",
      "tags": "makanan,bbq",
      "stock": "8",
      "rating": "4.5",
      "sold": "1500",
      "cost": "16"
    },
    {
      "id": "10007",
      "name": "Kentang Sweet Chili",
      "tags": "makanan,manis,pedas",
      "stock": "6",
      "rating": "4.4",
      "sold": "900",
      "cost": "20"
    },
    {
      "id": "10008",
      "name": "Kentang Wedges",
      "tags": "makanan,wedges",
      "stock": "7",
      "rating": "4.3",
      "sold": "1000",
      "cost": "14"
    },
    {
      "id": "10009",
      "name": "Kentang Garlic Parmesan",
      "tags": "makanan,bawang putih,keju",
      "stock": "2",
      "rating": "4.9",
      "sold": "400",
      "cost": "26"
    },
    {
      "id": "10010",
      "name": "Kentang Sour Cream",
      "tags": "makanan,cream",
      "stock": "3",
      "rating": "4.7",
      "sold": "700",
      "cost": "18"
    },
    {
      "id": "10011",
      "name": "Kentang Pedas",
      "tags": "makanan,pedas",
      "stock": "1",
      "rating": "4.8",
      "sold": "784",
      "cost": "14"
    },
    {
      "id": "10012",
      "name": "Kentang Balado",
      "tags": "makanan,pedas",
      "stock": "1",
      "rating": "4.6",
      "sold": "691",
      "cost": "16"
    },
    {
      "id": "10013",
      "name": "Kentang Manis",
      "tags": "makanan,manis",
      "stock": "4",
      "rating": "4.3",
      "sold": "600",
      "cost": "15"
    },
    {
      "id": "10014",
      "name": "Kentang Lada Hitam",
      "tags": "makanan,lada hitam",
      "stock": "3",
      "rating": "4.5",
      "sold": "550",
      "cost": "17"
    },
    {
      "id": "10015",
      "name": "Kentang Pedas Manis",
      "tags": "makanan,pedas,manis",
      "stock": "6",
      "rating": "4.7",
      "sold": "800",
      "cost": "19"
    },
    {
      "id": "10016",
      "name": "Kentang Saus BBQ",
      "tags": "makanan,bbq",
      "stock": "5",
      "rating": "4.4",
      "sold": "700",
      "cost": "18"
    },
    {
      "id": "10017",
      "name": "Kentang Keju Pedas Manis",
      "tags": "makanan,keju,pedas,manis",
      "stock": "2",
      "rating": "4.8",
      "sold": "400",
      "cost": "23"
    },
    {
      "id": "10018",
      "name": "Kentang Cabe Garam",
      "tags": "makanan,pedas,garam",
      "stock": "7",
      "rating": "4.6",
      "sold": "900",
      "cost": "15"
    },
    {
      "id": "10019",
      "name": "Kentang Garlic Mayo",
      "tags": "makanan,bawang putih,mayo",
      "stock": "3",
      "rating": "4.7",
      "sold": "600",
      "cost": "21"
    },
    {
      "id": "10020",
      "name": "Kentang Keju Mayo",
      "tags": "makanan,keju,mayo",
      "stock": "4",
      "rating": "4.5",
      "sold": "650",
      "cost": "20"
    },
    {
      "id": "10021",
      "name": "Kentang Bawang Putih",
      "tags": "makanan,bawang putih",
      "stock": "6",
      "rating": "4.3",
      "sold": "800",
      "cost": "17"
    },
    {
      "id": "10022",
      "name": "Kentang Cheese Bacon",
      "tags": "makanan,keju,bacon",
      "stock": "2",
      "rating": "4.9",
      "sold": "350",
      "cost": "25"
    },
    {
      "id": "10023",
      "name": "Kentang Pedas Keju",
      "tags": "makanan,pedas,keju",
      "stock": "5",
      "rating": "4.7",
      "sold": "700",
      "cost": "22"
    },
    {
      "id": "10024",
      "name": "Kentang Saus Tiram",
      "tags": "makanan,saus tiram",
      "stock": "3",
      "rating": "4.4",
      "sold": "500",
      "cost": "19"
    },
    {
      "id": "10025",
      "name": "Kentang Balut Ayam",
      "tags": "makanan,ayam",
      "stock": "2",
      "rating": "4.5",
      "sold": "450",
      "cost": "18"
    },
    {
      "id": "10026",
      "name": "Kentang Keju Pedas",
      "tags": "makanan,keju,pedas",
      "stock": "4",
      "rating": "4.6",
      "sold": "550",
      "cost": "21"
    },
    {
      "id": "10027",
      "name": "Kentang Saus Tomat",
      "tags": "makanan,saus tomat",
      "stock": "6",
      "rating": "4.3",
      "sold": "600",
      "cost": "16"
    },
    {
      "id": "10028",
      "name": "Kentang Bawang Merah",
      "tags": "makanan,bawang merah",
      "stock": "3",
      "rating": "4.4",
      "sold": "400",
      "cost": "17"
    },
    {
      "id": "10029",
      "name": "Kentang Saus BBQ Pedas",
      "tags": "makanan,bbq,pedas",
      "stock": "5",
      "rating": "4.5",
      "sold": "700",
      "cost": "19"
    },
    {
      "id": "10030",
      "name": "Kentang Saus Mentega",
      "tags": "makanan,mentega",
      "stock": "7",
      "rating": "4.7",
      "sold": "900",
      "cost": "20"
    },
    {
      "id": "10031",
      "name": "Kentang Pedas Saus Tiram",
      "tags": "makanan,pedas,saus tiram",
      "stock": "4",
      "rating": "4.6",
      "sold": "550",
      "cost": "22"
    },
    {
      "id": "10032",
      "name": "Kentang Keju Pedas Manis",
      "tags": "makanan,keju,pedas,manis",
      "stock": "3",
      "rating": "4.8",
      "sold": "600",
      "cost": "23"
    },
    {
      "id": "10033",
      "name": "Kentang Saus BBQ Keju",
      "tags": "makanan,bbq,keju",
      "stock": "6",
      "rating": "4.7",
      "sold": "700",
      "cost": "20"
    },
    {
      "id": "10034",
      "name": "Kentang Pedas Saus Tomat",
      "tags": "makanan,pedas,saus tomat",
      "stock": "3",
      "rating": "4.5",
      "sold": "400",
      "cost": "18"
    },
    {
      "id": "10035",
      "name": "Kentang Saus Pedas Manis",
      "tags": "makanan,pedas,manis",
      "stock": "4",
      "rating": "4.6",
      "sold": "500",
      "cost": "19"
    },
    {
      "id": "10036",
      "name": "Kentang Pedas Bawang Putih",
      "tags": "makanan,pedas,bawang putih",
      "stock": "2",
      "rating": "4.3",
      "sold": "300",
      "cost": "17"
    },
    {
      "id": "10037",
      "name": "Kentang Saus Tiram Pedas",
      "tags": "makanan,saus tiram,pedas",
      "stock": "5",
      "rating": "4.4",
      "sold": "600",
      "cost": "20"
    },
    {
      "id": "10038",
      "name": "Kentang Keju Pedas BBQ",
      "tags": "makanan,keju,pedas,bbq",
      "stock": "3",
      "rating": "4.7",
      "sold": "450",
      "cost": "22"
    },
    {
      "id": "10039",
      "name": "Kentang Saus BBQ Pedas Manis",
      "tags": "makanan,bbq,pedas,manis",
      "stock": "4",
      "rating": "4.8",
      "sold": "550",
      "cost": "23"
    },
    {
      "id": "10040",
      "name": "Kentang Keju BBQ Pedas",
      "tags": "makanan,keju,bbq,pedas",
      "stock": "2",
      "rating": "4.6",
      "sold": "400",
      "cost": "21"
    },
    {
      "id": "10041",
      "name": "Kentang Pedas Saus BBQ",
      "tags": "makanan,pedas,bbq",
      "stock": "3",
      "rating": "4.5",
      "sold": "350",
      "cost": "19"
    },
    {
      "id": "10042",
      "name": "Kentang Saus Mentega Pedas",
      "tags": "makanan,mentega,pedas",
      "stock": "4",
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
    _recoitems.sort((a, b) => b["poin"]!.compareTo(a["poin"]!));
    notifyListeners();
    return _recoitems;
  }
}
