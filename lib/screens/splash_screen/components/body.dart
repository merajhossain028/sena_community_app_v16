import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:sena_community_app/screens/wrapper.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: Column(
        children: [
          Image.asset('assets/images/v16.png',height: 220, width: 220,),
          const Text("Vision 16", style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold,),),
        ],
      ),
      nextScreen: Wrapper(),
      splashIconSize: 300,
      duration: 2000,
      splashTransition: SplashTransition.fadeTransition,
      pageTransitionType: PageTransitionType.topToBottom,
    );
  }
}
