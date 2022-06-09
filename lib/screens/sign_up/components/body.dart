import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:sena_community_app/helpers/constants/constants.dart';
import 'package:sena_community_app/screens/login/login.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  final TextEditingController _date = TextEditingController();

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
                        GestureDetector(
                          child: Stack(
                            children: [
                              Container(
                                padding: const EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(100),
                                  border:
                                      Border.all(width: 5, color: Colors.white),
                                  color: Colors.white,
                                  boxShadow: const [
                                    BoxShadow(
                                      color: Colors.black12,
                                      blurRadius: 20,
                                      offset: Offset(5, 5),
                                    ),
                                  ],
                                ),
                                child: Icon(
                                  Icons.person,
                                  color: Colors.grey.shade300,
                                  size: 80.0,
                                ),
                              ),
                              Container(
                                padding:
                                    const EdgeInsets.fromLTRB(80, 80, 0, 0),
                                child: Icon(
                                  Icons.add_circle,
                                  color: Colors.grey.shade700,
                                  size: 25.0,
                                ),
                              ),
                            ],
                          ),
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
                margin: const EdgeInsets.only(top: 20),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                child: SizedBox(
                  height: size.height * 0.6,
                  width: size.width * 0.9,
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const SizedBox(
                            height: 10,
                          ),
                          const TextField(
                            obscureText: true,
                            decoration: InputDecoration(
                              hintText: "Name",
                              prefixIcon: Icon(
                                Icons.person,
                                color: Colors.green,
                              ),
                            ),
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
                          TextFormField(
                            obscureText: true,
                            decoration: const InputDecoration(
                              hintText: "Password",
                              prefixIcon: Icon(
                                Icons.key,
                                color: Colors.green,
                              ),
                            ),
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
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          const TextField(
                            decoration: InputDecoration(
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
                          const TextField(
                            decoration: InputDecoration(
                              hintText: "GC Number",
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
                            controller: _date,
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
                                _date.text =
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
                            controller: _date,
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
                                _date.text =
                                    DateFormat('dd-MM-yyyy').format(pickdate);
                              }
                            },
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          SizedBox(
                            width: size.width * 0.4,
                            child: RawMaterialButton(
                              fillColor: Colors.white,
                              padding:
                                  const EdgeInsets.symmetric(vertical: 10.0),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => LogInScreen(),
                                  ),
                                );
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
        ],
      ),
    );
  }
}
