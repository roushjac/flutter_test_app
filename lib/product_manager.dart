import 'package:flutter/material.dart';

import './products.dart'; // Imports from same folder this file is in

class ProductManager extends StatefulWidget{
  final String startingProduct;

  ProductManager(this.startingProduct);

  @override
  State<StatefulWidget> createState() {
    return _ProductManagerState();
  }
}

class _ProductManagerState extends State<ProductManager>{
  List<String> _products = [];

  @override
  void initState() { // This executes before build()
    _products.add(widget.startingProduct);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: [Container(
            margin: EdgeInsets.all(10.0),
            child: RaisedButton(
                child: Text('Add something'),
                onPressed: () {
                  setState(() {
                    _products.add('Advanced Food Tester');
                  });
                }),
          ),
          Products(_products),
          ],
          );
  }
}