import 'package:flutter/material.dart';
import 'components/body.dart';

class LogInScreen extends StatelessWidget {
  const LogInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Colors.transparent,
      //   title: const Center(
      //     child: Text(
      //       'Login',
      //       style: TextStyle(
      //         color: Colors.green, 
      //         fontSize: 25,
      //         fontWeight: FontWeight.bold,
      //       ),
      //     ),
      //   ),
      // ),
      body:  Body(),
    );
  }
}
