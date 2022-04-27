import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class UsersAdminFirebaseUser {
  UsersAdminFirebaseUser(this.user);
  User user;
  bool get loggedIn => user != null;
}

UsersAdminFirebaseUser currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<UsersAdminFirebaseUser> usersAdminFirebaseUserStream() =>
    FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<UsersAdminFirebaseUser>(
            (user) => currentUser = UsersAdminFirebaseUser(user));
