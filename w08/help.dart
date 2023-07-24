import 'package:flutter/material.dart';

class HelpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(title: Text('Help')),
    body: Center(child:
      Column(children: [
        SizedBox(height: 30),
        Text('Help Page', textScaleFactor: 2.0),
      ])
    ),
  );
}
