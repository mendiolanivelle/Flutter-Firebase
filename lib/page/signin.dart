import 'package:firebaseapp/service/authservice.dart';
import 'package:flutter/material.dart';

class Signin extends StatefulWidget {
  Signin({Key key}) : super(key: key);

  @override
  _SigninState createState() => _SigninState();
}

class _SigninState extends State<Signin> {
  final AuthService authService = AuthService();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown[100],
      appBar: AppBar(
        backgroundColor: Colors.brown,
        title: Text('Sign in to coffee'),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 20, horizontal: 50),
        child: RaisedButton(
          child: Text('Sign in annon'),
          onPressed: () async {
            dynamic result = await authService.signinAnnon();
            if (result == null) {
              print('error sign in');
            } else {
              print('sign in');
              print(result.uid);
            }
          },
        ),
      ),
    );
  }
}
