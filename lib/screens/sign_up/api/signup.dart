//auth
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:sena_community_app/helpers/routes/custom_routes.dart';
import 'package:sena_community_app/screens/home/home.dart';

Future<void> signUp(BuildContext context, String email, String password) async {
  try {
    await FirebaseAuth.instance
        .createUserWithEmailAndPassword(
          email: email,
          password: password,
        )
        .then((_) => Navigator.pushAndRemoveUntil(
            context, SlideLeftRoute(page: const Home()), (route) => false));
  } on FirebaseAuthException catch (e) {
    if (e.code == 'weak-password') {
      print('The password provided is too weak.');
      ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text("The password is too weak.")));
    } else if (e.code == 'email-already-in-use') {
      print('The account already exists for that email.');
    }
  } catch (e) {
    print(e);
  }
}
