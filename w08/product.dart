import 'package:flutter/material.dart';
import 'product_detail.dart';

class ProductsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(title: Text('Product')),
    body: Center(child:
      Column(children: [
        SizedBox(height: 30),
        Text('Product Page', textScaleFactor: 2.0),
        SizedBox(height: 60),
        btnDetail(context)
      ])
    ),
  );

  Widget btnDetail(BuildContext ctx) => TextButton(
      child: Text('Product Detail >>', textScaleFactor: 1.5),
      onPressed: () => Navigator.push(ctx,
          MaterialPageRoute(
              builder: (context) => ProductDetailPage()
          )
      )
  );
}
