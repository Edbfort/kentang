import 'package:flutter/material.dart';
import 'package:flutter_application_1/pertemuan%206/my_provider.dart';
import 'package:provider/provider.dart';

class MySwitch extends StatefulWidget {
  const MySwitch({super.key});

  @override
  State<MySwitch> createState() => _MySwitchState();
}

class _MySwitchState extends State<MySwitch> {
  @override
  Widget build(BuildContext context) {
    var prov = Provider.of<SwitchProvider>(context);
    var prov2 = Provider.of<SpinnerProvider>(context);

    return Scaffold(
      appBar: AppBar(title: const Text("Switches | Dropdown B.")),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(children: [
          Row(
            children: [
              const Text("Light/Dark"),
              Switch(
                  value: prov.enableDark,
                  activeColor: Colors.green,
                  onChanged: (val) {
                    prov.setBrightness = val;
                  })
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text("Pekerjaan : "),
              DropdownButton(
                  value: prov2.selectedJob,
                  items: List.generate(
                      prov2.listPekerjaan.length,
                      (index) => DropdownMenuItem(
                          child: Text(prov2.listPekerjaan[index]),
                          value: prov2.listPekerjaan[index])),
                  onChanged: (value) {
                    prov2.selectedJob = value;
                  })
            ],
          ),
          Center(
            child: prov2.selectedJob == prov2.listPekerjaan[0] 
                ? Text("Belum Terpilih")
                : Text("Pekerjaan : ${prov2.selectedJob}"),
          ),
        ]),
      ),
    );
  }
}
