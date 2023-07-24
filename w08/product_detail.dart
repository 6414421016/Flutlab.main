import 'package:flutter/material.dart';

class ProductDetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(title: Text('Product > Detai')),
    body: Center(child:
      Column(children: [
        SizedBox(height: 30),
        Text('Product Detail Page', textScaleFactor: 2.0),
      ])
    ),
  );
}
