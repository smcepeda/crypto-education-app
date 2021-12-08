import 'package:firebase_auth/firebase_auth.dart';

class AuthenticationService {
  final _firebaseAuth = FirebaseAuth.instance;

  User? getCurrentUser() {
    return _firebaseAuth.currentUser;
  }

  Future logout() async {
    return _firebaseAuth.signOut();
  }

  Future<User?> login(String email, String password) async {
    try {
      UserCredential result = await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email, password: password);

      return result.user;
    } catch (e) {
      return null;
    }
  }

  Future<User?> register(String email, String password) async {
    try {
      UserCredential result = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: email, password: password);
      return result.user;
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        print('The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        print('The account already exists for that email.');
      }
    } catch (e) {
      print(e);
    }
  }
}

AuthenticationService authenticationService = new AuthenticationService();
