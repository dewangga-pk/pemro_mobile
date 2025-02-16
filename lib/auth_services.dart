import 'package:firebase_auth/firebase_auth.dart';

class AuthServices {
  static FirebaseAuth _auth = FirebaseAuth.instance;

  static Future<User> signInAnonymous() async {
    try {
      UserCredential result = await _auth.signInAnonymously();
      User firebaseUser = result.user;

      return firebaseUser;
    } catch (e) {
      print(e.toString());

      return null;
    }
  }

  static Future<User> signIn(String email, String pass) async {
    try {
      UserCredential result =
          await _auth.signInWithEmailAndPassword(email: email, password: pass);
      User user = result.user;

      return user;
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

  static Future<void> signOut() async {
    _auth.signOut();
  }

  static Stream<User> get firebaseUserStream => _auth.authStateChanges();
}
