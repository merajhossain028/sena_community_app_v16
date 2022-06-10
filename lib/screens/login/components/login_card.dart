import 'package:flutter/material.dart';
import 'package:sena_community_app/screens/home/home.dart';
import 'package:sena_community_app/screens/sign_up/sign_up.dart';

class LoginCard extends StatelessWidget {
  const LoginCard({
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
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20)),
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    "Login Account",
                    style: TextStyle(
                        fontSize: 20, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const TextField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      hintText: "Email",
                      hintStyle: TextStyle(fontSize: 16),
                      prefixIcon: Icon(
                        Icons.mail,
                        color: Colors.green,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: "Password",
                      prefixIcon: Icon(
                        Icons.key,
                        color: Colors.green,
                      ),
                    ),
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
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const Home(),
                            ),
                          );
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
    );
  }
}

