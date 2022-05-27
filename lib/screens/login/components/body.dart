import 'package:flutter/material.dart';
import 'package:sena_community_app/helpers/constants/constants.dart';

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
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(50),
                      bottomRight: Radius.circular(50),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              child: Column(
                children: [
                  Container(
                    color: Colors.white,
                    height: 300,
                    width: 300,
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
