import 'package:flutter/material.dart';

main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var x = 1;
  var y = 2;
  lw() {
    setState(() {
      x++;
      y++;
    });
    print("hii");
    print(x);
    print(y);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
              title: Center(
                child:
                    Text("Hello", style: TextStyle(color: Color(0xffffffaa))),
              ),
              backgroundColor: Colors.black26),
          body: Column(
            children: [
              Center(
                child: Text("LW $x$y",
                    style: TextStyle(
                      color: Colors.black87,
                      fontWeight: FontWeight.w800,
                      fontFamily: 'Roboto',
                      letterSpacing: 0.5,
                      fontSize: 20,
                    ),
                    textDirection: TextDirection.ltr),
              ),
              TextButton(
                onPressed: lw,
                child: Text("CLick"),
              )
            ],
          )),
    );
  }
}
