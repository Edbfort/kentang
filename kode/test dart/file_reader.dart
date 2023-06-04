import 'dart:async';
import 'dart:convert';
import 'dart:io';

void main() {
  String filePath = Directory.current.path + '/' + 'test_data.txt';
  print(filePath.replaceAll(r'\', '/'));

  var a = File(filePath).readAsStringSync();
  var dat = jsonDecode(a);
  print(dat);
}
