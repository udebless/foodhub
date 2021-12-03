import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

class AuthService {
  final GoogleSignIn googleSignIn = GoogleSignIn();
  final auth = FirebaseAuth.instance;

  login(String email, String password,
      {Function? onSucces, required Function onError}) async {
    try {
      await auth.signInWithEmailAndPassword(email: email, password: password);
      onSucces?.call();
    } catch (e) {
      print(e);
      onError();
    }
  }

  signUp(String password, String email,
      {Function? onSuccess, Function? onError}) async {
    try {
      await auth.createUserWithEmailAndPassword(
          email: email, password: password);
      onSuccess?.call();
    } catch (e) {
      onError?.call();
    }
  }

  signOut({required Function onSuccess}) async {
    await auth.signOut();
    onSuccess();
  }
}
