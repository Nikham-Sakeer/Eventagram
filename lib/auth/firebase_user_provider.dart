import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class EventagramFirebaseUser {
  EventagramFirebaseUser(this.user);
  User? user;
  bool get loggedIn => user != null;
}

EventagramFirebaseUser? currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<EventagramFirebaseUser> eventagramFirebaseUserStream() =>
    FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<EventagramFirebaseUser>(
      (user) {
        currentUser = EventagramFirebaseUser(user);
        return currentUser!;
      },
    );
