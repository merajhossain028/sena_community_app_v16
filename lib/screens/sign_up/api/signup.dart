//auth
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:sena_community_app/helpers/routes/custom_routes.dart';
import 'package:sena_community_app/screens/home/home.dart';

Future<void> signUp(
    BuildContext context,
    String name,
    String email,
    String phone,
    String password,
    String baNumber,
    String designation,
    Timestamp birthDate,
    String spouseName,
    String gender,
    Timestamp anniverseryDate) async {
  try {
    await FirebaseAuth.instance
        .createUserWithEmailAndPassword(
      email: email,
      password: password,
    )
        .then(
      (_) async {
        //creating user credential
        User? user = FirebaseAuth.instance.currentUser;

        // Sending user values in database
        await FirebaseFirestore.instance
            .collection('users')
            .doc(user!.uid)
            .set({
          'name': name,
          'email': email,
          'phone': phone,
          'BAN': baNumber, //BA Number (BAN)
          'designation': designation,
          'DOB': birthDate, // Date of Birth(DOB)
          'SpouseName': spouseName,
          'AND': anniverseryDate, // Anniversery Date (AND)
          'gender': gender,
        }).then(
          (value) => Navigator.pushAndRemoveUntil(
              context, SlideLeftRoute(page: const Home()), (route) => false),
        );
      },
    );
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
