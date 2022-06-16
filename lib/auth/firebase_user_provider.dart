import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class AmitieFirebaseUser {
  AmitieFirebaseUser(this.user);
  User user;
  bool get loggedIn => user != null;
}

AmitieFirebaseUser currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<AmitieFirebaseUser> amitieFirebaseUserStream() => FirebaseAuth.instance
    .authStateChanges()
    .debounce((user) => user == null && !loggedIn
        ? TimerStream(true, const Duration(seconds: 1))
        : Stream.value(user))
    .map<AmitieFirebaseUser>((user) => currentUser = AmitieFirebaseUser(user));
