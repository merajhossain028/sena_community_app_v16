// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:sena_community_app/screens/profile/family_info_slider/family_info_slider.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: size.height * 0.4,
              width: size.width,
              decoration: const BoxDecoration(
                color: Color(0xFFD8FFDE),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        const BackButton(),
                        const Spacer(),
                        Container(
                          height: 46,
                          width: 46,
                          decoration: BoxDecoration(
                              color: Colors.green.withOpacity(0.3),
                              shape: BoxShape.circle),
                          child: const Icon(Icons.message),
                        ),
                        const SizedBox(width: 10),
                        Container(
                          height: 46,
                          width: 46,
                          decoration: BoxDecoration(
                              color: Colors.green.withOpacity(0.3),
                              shape: BoxShape.circle),
                          child: const Icon(Icons.notifications),
                        ),
                        const SizedBox(width: 10),
                        InkWell(
                          child: Container(
                            height: 46,
                            width: 46,
                            decoration: BoxDecoration(
                                color: Colors.green.withOpacity(0.3),
                                shape: BoxShape.circle),
                            child: const Icon(Icons.menu),
                          ),
                          onTap: () {
                            Scaffold.of(context).openEndDrawer();
                          },
                        ),
                      ],
                    ),
                  ),
                  const Spacer(),
                  Column(
                    children: [
                      Container(
                        height: 120,
                        width: 120,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.white, width: 3.0),
                            borderRadius: BorderRadius.circular(65.0)),
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(65.0),
                            child: Image.asset("assets/images/majid.jpeg")),
                      ),
                      const SizedBox(height: 10),
                      const Text(
                        "Brigadier General (Retd) Md Abdul Majid",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      const SizedBox(height: 5),
                      const Text(
                        "GC Number: 2375",
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      const SizedBox(height: 5),
                      const Text(
                        "BA Number: 3264",
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      const SizedBox(height: 10),
                      SizedBox(
                        width: size.width * 0.3,
                        child: RawMaterialButton(
                          fillColor: Colors.white,
                          padding: const EdgeInsets.symmetric(vertical: 10.0),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          onPressed: () {
                            openDialog(context);
                          },
                          child: const Text(
                            "Show Details",
                            style: TextStyle(
                                color: Colors.green,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const Spacer(),
                ],
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              "Family",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.green,
              ),
            ),
            Container(
              height: size.height * 0.001,
              width: size.width * 0.3,
              color: Colors.green,
            ),
            const SizedBox(height: 10),
            const FamilyInfoSlider(),
            const SizedBox(height: 10),
            const Text(
              "Memories",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.green,
              ),
            ),
            Container(
              height: size.height * 0.001,
              width: size.width * 0.3,
              color: Colors.green,
            ),
            const SizedBox(height: 10),
            //Grid View
          ],
        ),
      ),
    );
  }

//Dialogue Function Builder
  Future openDialog(context) => showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: const Text("Show Details"),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                children: const [
                  Text(
                    "Name of Spouse:",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 12,
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    "Maksura Ahsan Runa",
                    style: TextStyle(
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Row(
                children: const [
                  Text(
                    "Birthday of Spouse:",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 12,
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    "6th September",
                    style: TextStyle(
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Row(
                children: const [
                  Text(
                    "Date of Birth:",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 12,
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    "12.10.1960",
                    style: TextStyle(
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Row(
                children: const [
                  Text(
                    "Date of Marriage:",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 12,
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    "20.05.1996",
                    style: TextStyle(
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ],
          ),
          actions: [
            FlatButton(
              child: const Text("Close"),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        ),
      );
}
