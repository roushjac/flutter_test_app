import 'package:flutter/material.dart';

import './product_manager.dart';

void main() {
  // main() is a special function that is run by Flutter automatically on "flutter run"
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override // MyApp's build() method overrides the build() method already present in StatelessWidget
  Widget build(BuildContext context) {
    // Give the build() method what type it should return - here its a widget
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('EasyList'),
        ),
        body: ProductManager('Food Tester'),
        ),
      );
  }
}
