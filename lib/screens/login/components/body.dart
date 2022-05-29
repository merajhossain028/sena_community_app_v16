import 'package:flutter/material.dart';
import 'package:sena_community_app/screens/sign_up/sign_up.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Stack(
        children: [
          Container(
            height: size.height,
            width: size.width,
            color: Colors.blue[50],
            child: Column(
              children: [
                Container(
                  height: size.height * 0.4,
                  width: size.width,
                  decoration: BoxDecoration(
                    color: Colors.green[300]!,
                    borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(40),
                      bottomRight: Radius.circular(40),
                    ),
                  ),
                  child: Align(
                    alignment: Alignment.topCenter,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const SizedBox(
                          height: 25,
                        ),
                        Container(
                          height: 60,
                          width: 60,
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(Radius.circular(50)),
                          ),
                          child: Image.asset("assets/images/v16.png"),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          "Vision 16",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        const Text(
                          "“সকলের তরে সকলে আমরা\nপ্রত্যেকে মোরা পরের তরে”",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        const Text(
                          "Fill The Below Information To Login",
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.black,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: SingleChildScrollView(
              child: Card(
                margin: const EdgeInsets.only(top: 180),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                child: SizedBox(
                  height: size.height * 0.57,
                  width: size.width * 0.9,
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
                            onPressed: () {},
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
                              "Don't Remember Your Password?",
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
        ],
      ),
    );
  }
}
