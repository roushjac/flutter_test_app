import 'package:flutter/material.dart';

void main() {
  // main() is a special function that is run by Flutter automatically on "flutter run"
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  // This class extends the State object(??) of MyApp

  List<String> _products = ['Food Tester'];

  @override // MyApp's build() method overrides the build() method already present in StatelessWidget
  Widget build(BuildContext context) {
    // Give the build() method what type it should return - here its a widget
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('EasyList'),
        ),
        body: Column(children: <Widget>[
          Container(
            margin: EdgeInsets.all(10.0),
            child: RaisedButton(
                child: Text('Add something'),
                onPressed: () {
                  setState(() {
                    _products.add('Advanced Food Tester');
                  });
                }),
          ),
          Column(
              children: _products
                  .map(
                    (element) => Card(
                          child: Column(
                            children: <Widget>[
                              Image.asset('assets/food_pic.jpg'),
                              Text('Fooooooood')
                            ],
                          ),
                        ),
                  )
                  .toList()),
        ]),
      ),
    );
  }
}
