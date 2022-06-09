import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

import '../models/list_card.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Column(
        children: [
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: size.width * 0.55,
                  decoration: BoxDecoration(
                    color: Colors.green.withOpacity(0.3),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: TextField(
                    onChanged: (value) {},
                    decoration: const InputDecoration(
                      enabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      hintText: "Search",
                      prefixIcon: Icon(Icons.search),
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 13),
                    ),
                  ),
                ),
                Container(
                  height: 46,
                  width: 46,
                  decoration: BoxDecoration(
                      color: Colors.green.withOpacity(0.3),
                      shape: BoxShape.circle),
                  child: const Icon(Icons.message),
                ),
                Container(
                  height: 46,
                  width: 46,
                  decoration: BoxDecoration(
                      color: Colors.green.withOpacity(0.3),
                      shape: BoxShape.circle),
                  child: const Icon(Icons.notifications),
                ),
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
          Padding(
            padding: const EdgeInsets.all(13.0),
            child: Align(
              alignment: Alignment.centerLeft,
              child: AnimatedTextKit(
                isRepeatingAnimation: false,
                animatedTexts: [
                  TypewriterAnimatedText(
                    'Greetings, Md Abdul Majid !',
                    textStyle: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.green,
                    ),
                    speed: const Duration(milliseconds: 200),
                  ),
                ],
              ),
            ),
          ),
          UserListItem(),
        ],
      ),
    );
  }
}
