import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '/Input/help.dart';

void main() {
  runApp(MultiProvider(
    providers: [ChangeNotifierProvider(create: (_) => ChatBox())],
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Login',
      theme: ThemeData(
          // This is the theme of your application.
          //
          // Try running your application with "flutter run". You'll see the
          // application has a blue toolbar. Then, without quitting the app, try
          // changing the primarySwatch below to Colors.green and then invoke
          // "hot reload" (press "r" in the console where you ran "flutter run",
          // or simply save your changes to "hot reload" in a Flutter IDE).
          // Notice that the counter didn't reset back to zero; the application
          // is not restarted.
          colorScheme: ColorScheme.fromSwatch().copyWith(
        primary: Colors.purple,
      )),
      home: const Login(title: 'Login'),
    );
  }
}

class Login extends StatefulWidget {
  const Login({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            for (var data in context.watch<ChatBox>().chatlist)
              Container(
                  child: data["type"] == "btn"
                      ? Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Expanded(
                              child: Container(
                                height: 1,
                              ),
                            ),
                            Expanded(
                                flex: 8,
                                child: Container(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      for (var i
                                          in data["opsi"].toString().split(","))
                                        Align(
                                          alignment: data["user"] == "true"
                                              ? Alignment.topRight
                                              : Alignment.topLeft,
                                          child: Container(
                                            child: Column(
                                              children: [
                                                ElevatedButton(
                                                    onPressed: () {
                                                      context
                                                          .read<ChatBox>()
                                                          .btnpress({
                                                        "type": "text",
                                                        "text": i,
                                                        "user": "true"
                                                      });
                                                    },
                                                    child: Text(i)),
                                                SizedBox(
                                                  height: 1,
                                                )
                                              ],
                                            ),
                                          ),
                                        )
                                    ],
                                  ),
                                )),
                            Expanded(
                              child: Container(
                                height: 1,
                              ),
                            ),
                          ],
                        )
                      : Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Expanded(
                              child: Container(
                                height: 1,
                              ),
                            ),
                            Expanded(
                                flex: 8,
                                child: Align(
                                    alignment: data["user"] == "true"
                                        ? Alignment.topRight
                                        : Alignment.topLeft,
                                    child: Container(
                                      child: Column(children: [
                                        Text(data["text"].toString()),
                                        SizedBox(
                                          height: 1,
                                        )
                                      ]),
                                    ))),
                            Expanded(
                              child: Container(
                                height: 1,
                              ),
                            ),
                          ],
                        )),
          ],
        ),
      ),
    );
  }
}
