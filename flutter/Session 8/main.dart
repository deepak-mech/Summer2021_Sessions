import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:http/http.dart' as http;

void main() {
  runApp(MyApp());
}

// ignore: must_be_immutable
class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  web() async {
    var x =
        Uri.http("192.168.43.140", "/cgi-bin/flutter.py", {"x": cmd, "y": cn});
    var response = await http.get(x);
    print(response.body);
    // print(cmd);
  }

  late String cmd;
  late String cn;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: Text("LW"),
          ),
          body: Column(
            children: [
              Text("Enter your command"),
              TextField(
                  onChanged: (value) {
                    cmd = value;
                  },
                  textInputAction: TextInputAction.send,
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.print),
                      hintText: "Enter Container Name")),
              TextField(
                  onChanged: (value) {
                    cn = value;
                  },
                  textInputAction: TextInputAction.send,
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.print),
                      hintText: "Enter Image Name")),
              TextButton(onPressed: web, child: Text("Click"))
            ],
          ),
        ));
  }
}
