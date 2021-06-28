import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  lw() {
    print("Click");
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.greenAccent,
          onPressed: lw,
          child: Icon(Icons.call_missed),
        ),
        appBar: AppBar(
          title: Text("codeLess"),
        ),
        body: Column(children: [
          Container(
              child: Text("Automation",
                  style: TextStyle(
                      fontSize: 25.0,
                      fontFamily: 'Roboto',
                      color: Colors.brown[800])),
              alignment: Alignment.topLeft,
              width: 800,
              height: 500,
              decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                      "https://cdn.dribbble.com/users/1480650/screenshots/4739771/autodevops-dribbble-gif.gif",
                    ),
                  ),
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.amberAccent)),
          IconButton(onPressed: null, icon: Icon(Icons.email_rounded)),
        ]),
      ),
    );
  }
}
