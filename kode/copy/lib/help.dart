import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ChatBox extends ChangeNotifier {
  final List<Map<String, String>> chatlist = [
    {"type": "text", "text": "Apakah kamu suka anime?"},
    {"type": "btn", "opsi": "Iya,Tidak", "user": "true"}
  ];
  final List<List<Map<String, String>>> chatans = [
    [
      {"type": "text", "text": "Kenapa kamu suka anime?"},
      {"type": "text", "text": "Kenapa kamu tidak suka anime?"}
    ],
    [
      {"type": "text", "text": "Apakah kamu merasa ini tidak jelas?"},
      {"type": "text", "text": "Apakah kamu merasa ini jelas?"}
    ]
  ];
  void addchat(var data) {
    this.chatlist.add(data);
    notifyListeners();
  }

  void removechat(var index) {
    this.chatlist.removeAt(index);
    notifyListeners();
  }

  void btnpress(var data) {
    removechat(chatlist.length - 1);
    this.addchat(data);
    String te = data["text"];
    if (te == "Iya") {
      this.addchat(chatans[0][0]);
    } else {
      this.addchat(chatans[0][1]);
    }
    chatans.removeAt(0);
    this.addchat({"type": "btn", "opsi": "Iya,Tidak", "user": "true"});
    notifyListeners();
  }
}
