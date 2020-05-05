import 'package:firebaseapp/service/authservice.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  final AuthService authService = AuthService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown[50],
      appBar: AppBar(
        title: Text('coffee'),
        backgroundColor: Colors.brown[400],
        elevation: 0,
        actions: <Widget>[
          FlatButton.icon(
              onPressed: () async {
                await authService.signOut();
              },
              icon: Icon(Icons.person),
              label: Text('Log out'))
        ],
      ),
    );
  }
}
