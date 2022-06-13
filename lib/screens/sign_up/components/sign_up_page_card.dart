import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:sena_community_app/helpers/constants/constants.dart';
import 'package:sena_community_app/screens/home/home.dart';

import '../api/signup.dart';

class SignUpPageCard extends StatefulWidget {
  const SignUpPageCard({
    Key? key,
    required this.size,
    required TextEditingController date,
  })  : _date = date,
        super(key: key);

  final Size size;
  final TextEditingController _date;

  @override
  State<SignUpPageCard> createState() => _SignUpPageCardState();
}

class _SignUpPageCardState extends State<SignUpPageCard> {
  final formKey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: SingleChildScrollView(
        child: Card(
          margin: const EdgeInsets.only(top: 60),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          child: SizedBox(
            height: widget.size.height * 0.6,
            width: widget.size.width * 0.9,
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: SingleChildScrollView(
                child: Form(
                  key: formKey,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                        decoration: const InputDecoration(
                          hintText: "Name",
                          prefixIcon: Icon(
                            Icons.person,
                            color: Colors.green,
                          ),
                        ),
                        validator: (value) {
                          if (value!.isEmpty ||
                              !RegExp(r'[a-z A-z]+$').hasMatch(value)) {
                            return "Enter Correct Name";
                          } else {
                            return null;
                          }
                        },
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        controller: emailController,
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
                        keyboardType: TextInputType.number,
                        decoration: const InputDecoration(
                          hintText: "Phone Number",
                          hintStyle: TextStyle(fontSize: 16),
                          prefixIcon: Icon(
                            Icons.phone,
                            color: Colors.green,
                          ),
                        ),
                        validator: (value) {
                          if (value!.isEmpty ||
                              !phoneValidatorRegExp.hasMatch(value)) {
                            return "Enter Correct Phone Number";
                          } else {
                            return null;
                          }
                        },
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        controller: passwordController,
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
                        height: 20,
                      ),
                      TextFormField(
                        obscureText: true,
                        decoration: const InputDecoration(
                          hintText: "Confirm Password",
                          prefixIcon: Icon(
                            Icons.key,
                            color: Colors.green,
                          ),
                        ),
                        validator: (v) {
                          if (passwordController.text != v) {
                            return "Password Dosen't Match";
                          }
                          return null;
                        },
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        keyboardType: TextInputType.number,
                        decoration: const InputDecoration(
                          hintText: "BA Number",
                          prefixIcon: Icon(
                            Icons.numbers,
                            color: Colors.green,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        controller: widget._date,
                        decoration: const InputDecoration(
                          hintText: "Bitrh Date",
                          prefixIcon: Icon(
                            Icons.calendar_today,
                            color: Colors.green,
                          ),
                        ),
                        onTap: () async {
                          DateTime? pickdate = await showDatePicker(
                              context: context,
                              initialDate: DateTime.now(),
                              firstDate: DateTime(1900),
                              lastDate: DateTime.now());
                          (context, child) => Theme(
                                data: Theme.of(context).copyWith(
                                  colorScheme: const ColorScheme.light(
                                    primary: Colors.green,
                                    onPrimary: Colors.green,
                                    surface: Colors.green,
                                  ),
                                ),
                                child: child,
                              );

                          if (pickdate != null) {
                            widget._date.text =
                                DateFormat('dd-MM-yyyy').format(pickdate);
                          }
                        },
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const TextField(
                        decoration: InputDecoration(
                          hintText: "Spouse Name",
                          prefixIcon: Icon(
                            Icons.person,
                            color: Colors.green,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        controller: widget._date,
                        decoration: const InputDecoration(
                          hintText: "Anniversery Date",
                          prefixIcon: Icon(
                            Icons.calendar_today,
                            color: Colors.green,
                          ),
                        ),
                        onTap: () async {
                          DateTime? pickdate = await showDatePicker(
                              context: context,
                              initialDate: DateTime.now(),
                              firstDate: DateTime(1900),
                              lastDate: DateTime.now());
                          (context, child) => Theme(
                                data: Theme.of(context).copyWith(
                                  colorScheme: const ColorScheme.light(
                                    primary: Colors.green,
                                    onPrimary: Colors.green,
                                    surface: Colors.green,
                                  ),
                                ),
                                child: child,
                              );

                          if (pickdate != null) {
                            widget._date.text =
                                DateFormat('dd-MM-yyyy').format(pickdate);
                          }
                        },
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      SizedBox(
                        width: widget.size.width * 0.4,
                        child: RawMaterialButton(
                          fillColor: Colors.white,
                          padding: const EdgeInsets.symmetric(vertical: 10.0),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          onPressed: () async {
                            if (formKey.currentState!.validate()) {
                              // final snackBar = SnackBar(
                              //   content: Text("Submitting form"),
                              // );
                              await signUp(context, emailController.text,
                                  passwordController.text);
                            }
                          },
                          child: const Text(
                            "Sign Up",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}


