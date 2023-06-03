import 'dart:async';
import 'dart:convert';
import 'dart:io';

void main() {
  var a = File('test_data.txt').readAsString().then((String contents) {
    var dat = jsonDecode(contents);
    print(dat);
  });
}
