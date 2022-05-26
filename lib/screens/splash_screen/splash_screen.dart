import 'package:flutter/material.dart'
    show BuildContext, Key, Scaffold, StatelessWidget, Widget;

import 'components/body.dart' show Body;

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Body(),
    );
  }
}
