import 'package:flutter/material.dart';
import 'package:sena_community_app/screens/home/home.dart';
import 'package:sena_community_app/screens/sign_up/sign_up.dart';

import '../../../helpers/constants/constants.dart';

class LoginCard extends StatelessWidget {
  final formKey = GlobalKey<FormState>();
  LoginCard({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Card(
            margin: const EdgeInsets.only(top: 180),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Form(
                key: formKey,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      "Login Account",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      decoration: const InputDecoration(
                        hintText: "Email",
                        hintStyle: TextStyle(fontSize: 16),
                        prefixIcon: Icon(
                          Icons.mail,
                          color: Colors.green,
                        ),
                      ),
                      validator: (value) {
                        if (value!.isEmpty ||
                            !emailValidatorRegExp.hasMatch(value)) {
                          return "Enter Correct Email";
                        } else {
                          return null;
                        }
                      },
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      obscureText: true,
                      decoration: const InputDecoration(
                        hintText: "Password",
                        prefixIcon: Icon(
                          Icons.key,
                          color: Colors.green,
                        ),
                      ),
                      validator: (value) {
                        if (value!.isEmpty ||
                            !RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$')
                                .hasMatch(value)) {
                          return "Enter Valid Password";
                        } else {
                          return null;
                        }
                      },
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "In case you forgot your password,",
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                        TextButton(
                          child: const Text(
                            "Click Here",
                            style: TextStyle(
                              color: Colors.green,
                            ),
                          ),
                          onPressed: () {},
                        ),
                      ],
                    ),
                    SizedBox(
                      width: size.width * 0.4,
                      child: RawMaterialButton(
                        fillColor: Colors.white,
                        padding: const EdgeInsets.symmetric(vertical: 10.0),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        onPressed: () {
                          if (formKey.currentState!.validate()) {
                            final snackBar = SnackBar(
                              content: Text("Submitting form"),
                            );
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const Home(),
                              ),
                            );
                          }
                        },
                        child: const Text(
                          "Login",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "Want To Register?",
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                        TextButton(
                          child: const Text(
                            "Sign Up",
                            style: TextStyle(
                              color: Colors.green,
                            ),
                          ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const SignUp(),
                              ),
                            );
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
