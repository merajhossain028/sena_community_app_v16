import 'package:flutter/material.dart';
import 'package:sena_community_app/screens/login/components/header_widget.dart';

class Body extends StatelessWidget {
  double _headerHeight = 250;
  Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            height: 250,
            child: HeaderWidget(
              _headerHeight,
              Icons.login,
              true,
            ),
          ),
          SafeArea(
            child: Container(
              child: Column(
                children: [
                  Text(
                    "Hello Mr. Mojid",
                    style: TextStyle(
                      fontSize: 50,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
