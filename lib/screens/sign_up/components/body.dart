import 'package:flutter/material.dart';
import 'package:sena_community_app/screens/sign_up/components/sign_up_page_card.dart';
import 'package:sena_community_app/screens/sign_up/components/signup_page_design.dart';

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
          SignUpDesign(size: size),
          const SignUpPageCard(),
        ],
      ),
    );
  }
}

