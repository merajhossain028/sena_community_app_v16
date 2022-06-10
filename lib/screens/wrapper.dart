import 'package:flutter/material.dart';
import 'package:sena_community_app/screens/home/home.dart';
import 'package:sena_community_app/screens/profile/profile.dart';
import 'package:sena_community_app/screens/splash_screen/splash_screen.dart';
import 'package:sena_community_app/screens/v16_album/v16_album.dart';
import '../helpers/size_config/size_config.dart' show ScreenSize;

class Wrapper extends StatelessWidget {
  final ScreenSize _sizeConfig = ScreenSize();

  Wrapper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    _sizeConfig.init(context);
    return const SplashScreen();
  }
}
