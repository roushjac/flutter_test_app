import 'package:flutter/material.dart';

void main() {
  // main() is a special function that is run by Flutter automatically on "flutter run"
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override // MyApp's build() method overrides the build() method already present in StatelessWidget
  Widget build(BuildContext context) {
    // Give the build() method what type it should return - here its a widget
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('EasyList'),
        ),
        body: Column(children: <Widget>[
          RaisedButton(
            child: Text('Add something'),
            onPressed: () {}
          ),
          Card(
              child: Column(
            children: <Widget>[
              Image.asset('assets/food_pic.jpg'),
              Text('Fooooooood')
            ],
          )),
        ]),
      ),
    );
  }
}
