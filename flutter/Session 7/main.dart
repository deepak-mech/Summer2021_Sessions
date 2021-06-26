import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:http/http.dart' as http;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  web() async {
    var x = Uri.http("192.168.1.55", "/cgi-bin/flutter.py");
    var r1 = await http.get(x);
    print(r1.body);
    print(r1.statusCode);
    print(r1.headers);
    print(r1.contentLength);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Hello"),
          actions: [
            IconButton(onPressed: web, icon: Icon(Icons.email)),
          ],
        ),
        body: Text('I m body'),
      ),
    );
  }
}
