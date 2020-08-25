import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Dojo de Flutter da Revelo'),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;

  MyHomePage({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.black38,
                  blurRadius: 8.0,
                )
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.only(
                top: 40.0,
                left: 16.0,
                right: 16.0,
                bottom: 16.0,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Text(
                    "Texto titulo",
                    style: TextStyle(fontSize: 30.0),
                  ),
                  Text(
                    "Text descritivo",
                    style: TextStyle(fontSize: 20.0),
                  )
                ],
              ),
            ),
          ),
          Container(
            color: Colors.black12,
            height: 560,
            child: ListView(
              children: <Widget>[
                Card(
                  child: Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Row(
                      children: [
                        SizedBox(
                          height: 60.0,
                          width: 60.0,
                          child: Image.network(
                              "https://raw.githubusercontent.com/flutter-rus/flutter-rus.github.io/master/images/logo.png"),
                        ),
                        Text("Dev Flutter"),
                      ],
                    ),
                  ),
                ),
                Container(
                  child: Text("Texto 2"),
                ),
              ],
            ),
          ),
        ],
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
