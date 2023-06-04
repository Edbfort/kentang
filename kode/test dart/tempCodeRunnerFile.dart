r a = File(filePath).readAsString().then((String contents) {
    var dat = jsonDecode(contents);
    print(dat);
  