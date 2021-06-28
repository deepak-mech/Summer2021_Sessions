import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  lw() {
    print("Hey I am Deepak");
  }

  lw1() {
    print("Shruti this side");
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(
              title: Text("LW!!"),
              centerTitle: true,
              backgroundColor: Colors.amber.shade300,
              actions: [
                IconButton(
                    onPressed: lw,
                    icon: Icon(
                      Icons.access_alarm,
                    )),
                IconButton(onPressed: lw1, icon: Icon(Icons.email))
              ],
            ),
            body: Center(
              child: Text("Hiiii"),
            )));
  }
}
