import 'package:firebase_auth/firebase_auth.dart';
import 'package:logger/logger.dart';

class AuthController {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final Logger logger = Logger();

  Future<User?> signInWithEmailAndPassword(
      String email, String password) async {
    try {
      final UserCredential userCredential =
          await _auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      return userCredential.user;
    } catch (e) {
      logger.e("Error signing in: $e");
      return null;
    }
  }

  Future<User?> registerWithEmailAndPassword(
      String email, String password, String username) async {
    try {
      final UserCredential userCredential =
          await _auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      await userCredential.user?.updateDisplayName(username);
      return userCredential.user;
    } catch (e) {
      logger.e("Error registering: $e");
      return null;
    }
  }

  Future<void> signOut() async {
    try {
      await _auth.signOut();
    } catch (e) {
      logger.e("Error signing out: $e");
    }
  }

  Future<User?> loginWithGoogle() async {
    try {
      final GoogleAuthProvider googleProvider = GoogleAuthProvider();
      final UserCredential userCredential =
          await _auth.signInWithPopup(googleProvider);
      return userCredential.user;
    } catch (e) {
      logger.e("Error logging in with Google: $e");
      return null;
    }
  }
}

Future<User?> GetUser() async {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  return _auth.currentUser;
}

