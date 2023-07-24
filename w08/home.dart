import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(title: Text('HomePage')),
    body: Center(child:
      Column(children: [
        SizedBox(height: 30),
        Text('Home Page', textScaleFactor: 2.0),
      ]),
    ),
  );
}
