import 'package:flutter/material.dart';
import 'member_signin.dart';

class MemberPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(title: Text('Member')),
    body: Center(child: 
      Column(children: [
        SizedBox(height: 30),
        Text('Member Page', textScaleFactor: 2.0),
        SizedBox(height: 60),
        btnSignin(context)
      ])
    ),
  );
  
  Widget btnSignin(BuildContext ctx) => TextButton(
      child: Text('Member Signin >>', textScaleFactor: 1.5),
      onPressed: () => Navigator.push(ctx,
          MaterialPageRoute(
              builder: (context) => MemberSigninPage()
          )
      )
  );
}
