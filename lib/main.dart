import 'package:firebaseapp/model/user.dart';
import 'package:firebaseapp/page/authenticate.dart';
import 'package:firebaseapp/page/home.dart';
import 'package:firebaseapp/page/wrapper.dart';
import 'package:firebaseapp/service/authservice.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return StreamProvider<User>.value(
      value: AuthService().user,
      child: MaterialApp(
        home: Wrapper(),
      ),
    );
  }
}
