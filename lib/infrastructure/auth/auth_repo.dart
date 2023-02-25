import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';

class AuthRepo {
  static Future signIn({
    required String email,
    required String password,
  }) async {
    try {
      log('$email : $password');
      final user = await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      return user;
      // user.credential;
    } on FirebaseAuthException catch (e) {
      print(">>>>>>>> Exception caught $e");
    }
  }
}
