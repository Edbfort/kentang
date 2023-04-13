import 'package:flutter/material.dart';

class SwitchProvider extends ChangeNotifier {
  bool _enableDark = false;

  var LightTheme = ThemeData(
    brightness: Brightness.light,
    primarySwatch: Colors.purple,
  );
  var DarkTheme = ThemeData(
    brightness: Brightness.dark,
    primarySwatch: Colors.purple,
  );

  bool get enableDark => _enableDark;

  set setBrightness(val) {
    _enableDark = val;
    notifyListeners();
  }
}

class SpinnerProvider extends ChangeNotifier {
  final List<String> _listPekerjaan = [
    "-- Pilih Pekerjaan --",
    "Mahasiswa",
    "Dosen",
    "Guru",
    "Siswa",
    "PNS",
    "Direktur",
    "CEO",
    "Manejer",
    "Akuntansi",
    "Inventor",
    "Creative",
    "Lainnya"
  ];

  List<String> get listPekerjaan => _listPekerjaan;

  String _selectedJob = "-- Pilih Pekerjaan --";
  set selectedJob(value) {
    _selectedJob = value;
    notifyListeners();
  }

  String get selectedJob => _selectedJob;
}


class ChallangeProvider extends ChangeNotifier {
  String _nama = '';
  String get nama => _nama;
  set nama(val){
    _nama = val;
    notifyListeners();
  }

  String _vallaki = "Laki-Laki";
  String get vallaki => _vallaki;
  String _valperem = "Perempuan";
  String get valperem => _valperem;
  bool _laki = true;
  bool get laki => _laki;
  set laki(val){
    _laki = val;
    notifyListeners();
  }
  bool _perem = false;
  bool get perem => _perem;
  set perem(val){
    _perem = val;
    notifyListeners();
  }
}