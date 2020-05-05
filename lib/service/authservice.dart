import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebaseapp/model/user.dart';

class AuthService {
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

//create user obj based on firebase object

  User _userfromFirebaseUser(FirebaseUser user) {
    return user != null ? User(user.uid) : null;
  }

  //auth change user stream
  Stream<User> get user {
    return _firebaseAuth.onAuthStateChanged
        //.map((FirebaseUser user) => _userfromFirebaseUser(user));
        .map(_userfromFirebaseUser);
  }

  //sign in annon
  Future signinAnnon() async {
    try {
      AuthResult authResult = await _firebaseAuth.signInAnonymously();
      FirebaseUser user = authResult.user;

      return _userfromFirebaseUser(user);
    } catch (e) {
      print(e.toString());
      return null;
    }
  }
  //sign in with email

  //register with email and password

  // signout

  Future signOut() async {
    try {
      return await _firebaseAuth.signOut();
    } catch (e) {
      print(e.toString());
    }
  }
}
