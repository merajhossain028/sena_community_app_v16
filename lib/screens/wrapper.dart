import 'package:flutter/material.dart';
import 'package:sena_community_app/screens/splash_screen/splash_screen.dart';

import '../helpers/size_config/size_config.dart' show ScreenSize;
import 'home/home.dart';

class Wrapper extends StatelessWidget {
  final ScreenSize _sizeConfig = ScreenSize();

  Wrapper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    _sizeConfig.init(context);
    return const Home();
  }
}
