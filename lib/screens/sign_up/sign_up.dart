import 'package:flutter/material.dart';
import 'package:sena_community_app/screens/sign_up/components/body.dart';

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green[300]!,
        title: const Text(
          "Sign Up",
        ),
      ),
      body: const Body(),
    );
  }
}
