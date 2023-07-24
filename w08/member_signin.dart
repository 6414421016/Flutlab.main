import 'package:flutter/material.dart';

class MemberSigninPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(title: Text('Member > Signin')),
    body: Center(child:
      Column(children: [
        SizedBox(height: 30),
        Text('Member Signin Page', textScaleFactor: 2.0),
      ])
    ),
  );
}
