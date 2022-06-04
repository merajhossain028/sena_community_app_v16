import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class FamilyInfoSlider extends StatefulWidget {
  const FamilyInfoSlider({Key? key}) : super(key: key);

  @override
  State<FamilyInfoSlider> createState() => _FamilyInfoSliderState();
}

class _FamilyInfoSliderState extends State<FamilyInfoSlider> {
  late PageController pageController = PageController();

  @override
  void initState() {
    pageController = PageController();
    super.initState();
  }
  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          height: 250,
          child: PageView.builder(
            controller: pageController,
            itemBuilder: (_, index) {
              return AnimatedBuilder(
                animation: pageController,
                builder: (ctx, child) {
                  return child!;
                },
                child: Container(
                  margin: EdgeInsets.all(24.0),
                  height: 250,
                  color: Colors.green,
                ),
              );
            },
            itemCount: 5,
          ),
        ),
      ],
    );
  }
}
