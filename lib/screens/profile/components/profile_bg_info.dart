import 'package:flutter/material.dart';

import 'details_dialogue_function/future_dialogue_function_builder.dart';
class ProfileBgWithProfileInfo extends StatelessWidget {
  const ProfileBgWithProfileInfo({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
}

