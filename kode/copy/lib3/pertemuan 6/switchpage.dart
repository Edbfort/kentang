import 'package:flutter/material.dart';
import 'package:flutter_application_1/pertemuan%206/my_provider.dart';
import 'package:provider/provider.dart';

class ChallangePage extends StatefulWidget {
  const ChallangePage({super.key});

  @override
  State<ChallangePage> createState() => _ChallangePageState();
}

class _ChallangePageState extends State<ChallangePage> {
  @override
  Widget build(BuildContext context) {
    var prov= Provider.of<ChallangeProvider>(context);
    return Scaffold(
      appBar: AppBar(title: Text("Challange")),
      body: Column(children: [
        Row(
          children: [
            Radio(value: prov.laki, groupValue: 1, onChanged: (val){
              prov.laki = val;
            }),
            Text("Laki-laki"),
            Radio(value: prov.perem, groupValue: 1, onChanged: (val){
              prov.perem=val;
            }),
            Text("Perempuan"),
          ],
        ),
        Row(
          children: [
            Text("Nama : "),
            Expanded(
              child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Nama',
                      ),
                    ),
            ),
          ],
        ),
        Row(
          children: [
            Checkbox(value: value, onChanged: onChanged),
            Text("Setuju"),
          ],
        ),
        ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        minimumSize: const Size(100, 45),
                      ),
                      onPressed: () {},
                      child: const Text(
                        "Selanjutnya",
                        style: TextStyle(fontSize: 16),
                      )),
      ]),
    )
  }
}