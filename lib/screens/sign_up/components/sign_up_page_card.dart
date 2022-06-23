import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import 'package:sena_community_app/helpers/constants/constants.dart';

import '../../../helpers/functions/select_date_picker.dart';
import '../../../helpers/size_config/size_config.dart';
import '../api/signup.dart';

class SignUpPageCard extends StatefulWidget {
  const SignUpPageCard({Key? key}) : super(key: key);

  @override
  State<SignUpPageCard> createState() => _SignUpPageCardState();
}

class _SignUpPageCardState extends State<SignUpPageCard> {
  final formKey = GlobalKey<FormState>();

  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController baNumber = TextEditingController();
  TextEditingController designation = TextEditingController();
  Timestamp? dob;
  TextEditingController spouseName = TextEditingController();
  Timestamp? anniverseryDate;
  

  String? dropdownvalue;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Align(
      alignment: Alignment.center,
      child: SingleChildScrollView(
        child: Card(
          margin: const EdgeInsets.only(top: 60),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          child: SizedBox(
            height: size.height * 0.6,
            width: size.width * 0.9,
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
                        controller: nameController,
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
                        controller: phoneController,
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
                        controller: baNumber,
                        keyboardType: TextInputType.number,
                        decoration: const InputDecoration(
                          hintText: "BA Number",
                          prefixIcon: Icon(
                            Icons.numbers,
                            color: Colors.green,
                          ),
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Please Fill up your BA Number";
                          } else {
                            return null;
                          }
                        },
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        controller: designation,
                        decoration: const InputDecoration(
                          hintText: "Designation",
                          prefixIcon: Icon(
                            Icons.card_travel,
                            color: Colors.green,
                          ),
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Please Fill up your Designation";
                          } else {
                            return null;
                          }
                        },
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      InkWell(
                        onTap: () async {
                          dob = Timestamp.fromDate(
                              await selectDateFromPicker(context));
                          setState(() {});
                        },
                        child: Container(
                          height: 51.0,
                          width: double.infinity,
                          decoration: const BoxDecoration(
                            border: Border(
                              bottom:
                                  BorderSide(width: 0.5, color: Colors.grey),
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(22, 13, 12, 13),
                            child: Row(
                              mainAxisAlignment: mainSpaceBetween,
                              children: [
                                Text(
                                  dob == null
                                      ? 'Select Date of Birth'
                                      : dateDetailFormat.format(DateTime.parse(
                                          dob!.toDate().toString())),
                                  style: const TextStyle(fontSize: 17.0),
                                ),
                                const Icon(Icons.calendar_today, size: 20.0),
                              ],
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        controller: spouseName,
                        decoration: const InputDecoration(
                          hintText: "Spouse Name",
                          prefixIcon: Icon(
                            Icons.person,
                            color: Colors.green,
                          ),
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Please Fill up your Spouse Name";
                          } else {
                            return null;
                          }
                        },
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      InkWell(
                        onTap: () async {
                          anniverseryDate = Timestamp.fromDate(
                              await selectDateFromPicker(context));
                          setState(() {});
                        },
                        child: Container(
                          height: 51.0,
                          width: double.infinity,
                          decoration: const BoxDecoration(
                            border: Border(
                              bottom:
                                  BorderSide(width: 0.5, color: Colors.grey),
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(22, 13, 12, 13),
                            child: Row(
                              mainAxisAlignment: mainSpaceBetween,
                              children: [
                                Text(
                                  anniverseryDate == null
                                      ? 'Select anniversary date'
                                      : dateDetailFormat.format(DateTime.parse(
                                          anniverseryDate!.toDate().toString())),
                                  style: const TextStyle(fontSize: 17.0),
                                ),
                                const Icon(Icons.calendar_today, size: 20.0),
                              ],
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      DropdownButton<String>(
                        value: dropdownvalue,
                        hint: const Text(
                          "Select Your Gender",
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        ),
                        isExpanded: true,
                        icon: const Icon(
                          Icons.arrow_downward,
                          color: Colors.green,
                        ),
                        iconSize: 24,
                        elevation: 16,
                        style: const TextStyle(color: Colors.green),
                        underline: Container(
                          height: 1,
                          color: Colors.green,
                        ),
                        onChanged: (String? newValue) {
                          setState(() {
                            dropdownvalue = newValue!;
                          });
                        },
                        items: <String>['Male', 'Female']
                            .map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(
                              value,
                              style: const TextStyle(fontSize: 17),
                            ),
                          );
                        }).toList(),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      SizedBox(
                        width: size.width * 0.4,
                        child: RawMaterialButton(
                          fillColor: Colors.green,
                          padding: const EdgeInsets.symmetric(vertical: 10.0),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          onPressed: () async {
                            if (formKey.currentState!.validate()) {
                              // final snackBar = SnackBar(
                              //   content: Text("Submitting form"),
                              // );
                              await signUp(
                                context,
                                nameController.text,
                                emailController.text,
                                phoneController.text,
                                passwordController.text,
                                baNumber.text,
                                designation.text,
                                dob!,
                                spouseName.text,
                                dropdownvalue!,
                                anniverseryDate!,
                              );
                            }
                          },
                          child: const Text(
                            "Sign Up",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
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
