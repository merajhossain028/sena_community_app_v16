import 'package:flutter/material.dart';
import 'components/body.dart';
import 'models/custom_drawer.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Body(),
      endDrawer: CustomDrawer(),
    );
  }
}

