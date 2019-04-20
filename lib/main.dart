import 'package:flutter/material.dart';

main() {
  // main() is a special function that is run by Flutter automatically on "flutter run"
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  build(context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('EasyList'),
        ),
      ),
    );
  }
}
