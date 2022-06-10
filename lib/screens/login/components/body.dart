import 'package:flutter/material.dart';
import 'package:sena_community_app/screens/login/components/login_card.dart';
import 'package:sena_community_app/screens/login/components/login_page_design.dart';

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
                LoginPageDesign(size: size),
              ],
            ),
          ),
          LoginCard(size: size),
        ],
      ),
    );
  }
}

