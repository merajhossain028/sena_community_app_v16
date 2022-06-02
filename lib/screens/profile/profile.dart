import 'package:flutter/material.dart';
import 'package:sena_community_app/screens/profile/components/body.dart';

import '../home/models/custom_drawer.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Body(),
      endDrawer: CustomDrawer(),
    );
  }
}
