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
          Padding(padding: EdgeInsets.all(10.0)),
          Align(
            alignment: Alignment.centerLeft,
            child: Flex(
              direction: Axis.vertical,
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
          Container(
            color: Colors.black12,
            height: 640,
            child: ListView(
              children: <Widget>[
                Card(
                  child: Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Row(
                      children: [
                        SizedBox(
                          height: 20.0,
                          width: 20.0,
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
