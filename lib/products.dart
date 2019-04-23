import 'package:flutter/material.dart';

class Products extends StatelessWidget {
  final List<String> products; // Declare 'products' as a list of strings
  // 'final' marks a variable as immutable

  Products(this.products); // This is a constructor - shortcut for assigning 'products' to whatever is passed with class when it is called

  @override
  Widget build(BuildContext context) {
    return Column(
        children: products
            .map(
              (element) => Card(
                    child: Column(
                      children: <Widget>[
                        Image.asset('assets/food_pic.jpg'),
                        Text(element)
                      ],
                    ),
                  ),
            )
            .toList());
  }
}
