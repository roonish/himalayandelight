import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';

class AuthRepo {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  // Google sign-in
  Future<User?> signInWithGoogle() async {
    try {
      final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();
      if (googleUser == null) return null; // If the user cancels the sign-in
      final GoogleSignInAuthentication googleAuth =
          await googleUser.authentication;

      final OAuthCredential creds = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );

      final UserCredential userCred = await _auth.signInWithCredential(creds);
      return userCred.user;
    } on FirebaseAuthException catch (e) {
      // Return more detailed error messages based on Firebase exceptions
      print("FirebaseAuthException: ${e.message}");
      return null;
    } catch (e) {
      // Handle any other errors
      print("Error during Google sign-in: $e");
      return null;
    }
  }

  // Google sign-out
  Future<void> signOutWithGoogle() async {
    try {
      await GoogleSignIn().signOut(); // Sign out from Google
      await _auth.signOut(); // Sign out from Firebase
    } catch (e) {
      print("Error during Google sign-out: $e");
    }
  }

  // Facebook sign-in
  Future<User?> signInWithFacebook() async {
    try {
      final LoginResult loginResult = await FacebookAuth.instance.login();
      final AccessToken? accessToken = loginResult.accessToken;

      if (accessToken == null) return null; // If the user cancels the sign-in

      final OAuthCredential facebookAuthCredential =
          FacebookAuthProvider.credential(accessToken.token);

      final UserCredential userCred =
          await _auth.signInWithCredential(facebookAuthCredential);
      return userCred.user;
    } on FirebaseAuthException catch (e) {
      print("FirebaseAuthException: ${e.message}");
      return null;
    } catch (e) {
      print("Error during Facebook sign-in: $e");
      return null;
    }
  }

  // Facebook sign-out
  Future<void> signOutWithFacebook() async {
    try {
      await FacebookAuth.instance.logOut(); // Sign out from Facebook
      await _auth.signOut(); // Sign out from Firebase
    } catch (e) {
      print("Error during Facebook sign-out: $e");
    }
  }
}
