import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  bool dat = false;
  bool dot = false;
  bool det = false;
  String dat1 = "0";
  String dat2 = "0";
  String ree = "Hari";
  List<String> ha = ["Senin", "Selasa", "Rabu"];
  Map<String, List<String>> fi = {
    "0": [],
    "Senin": ["A", "B"],
    "Selasa": ["C", "D"],
    "Rabu": ["E", "F"],
  };
  Map<String, List<String>> ja = {
    "0": [],
    "A": ["A", "B"],
    "B": ["C", "D"],
    "C": ["E", "F"],
    "D": ["G", "H"],
    "E": ["I", "J"],
    "F": ["K", "L"],
  };
  String ree2 = "Film";
  String ree3 = "Jam";
  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            Switch(
                value: dat,
                onChanged: (val) {
                  setState(() {
                    dat = val;
                    dot = val;
                    det = val;
                  });
                }),
            Switch(
                value: dot,
                onChanged: (val) {
                  setState(() {
                    dot = val;
                  });
                }),
            Switch(
                value: det,
                onChanged: (val) {
                  setState(() {
                    det = val;
                  });
                }),
            DropdownButton(
                hint: Text(ree),
                items: [
                  for (var i in ha)
                    DropdownMenuItem(
                      child: Text(i),
                      value: i,
                    ),
                ],
                onChanged: (val) {
                  setState(() {
                    ree = val.toString();
                    dat1 = val.toString();
                  });
                }),
            DropdownButton(
                hint: Text(ree2),
                items: [
                  for (var j in fi[dat1]!)
                    DropdownMenuItem(
                      child: Text(j),
                      value: j,
                    ),
                ],
                onChanged: (val) {
                  setState(() {
                    ree2 = val.toString();
                    dat2 = val.toString();
                  });
                }),
            DropdownButton(
                hint: Text(ree3),
                items: [
                  for (var k in ja[dat2]!)
                    DropdownMenuItem(
                      child: Text(k),
                      value: k,
                    ),
                ],
                onChanged: (val) {
                  setState(() {
                    ree3 = val.toString();
                  });
                }),
            Text(ree),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
