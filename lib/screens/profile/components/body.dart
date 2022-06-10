import 'package:flutter/material.dart';
import 'package:sena_community_app/screens/profile/components/profile_bg_info.dart';
import 'package:sena_community_app/screens/profile/family_info_slider/family_info_slider.dart';
import 'package:sena_community_app/screens/profile/gallery_greed_view/gallery.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            ProfileBgWithProfileInfo(size: size),
            const SizedBox(height: 10),
            const Text(
              "Family",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.green,
              ),
            ),
            Container(
              height: size.height * 0.001,
              width: size.width * 0.3,
              color: Colors.green,
            ),
            const SizedBox(height: 10),
            const FamilyInfoSlider(),
            const SizedBox(height: 10),
            const Text(
              "Memories",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.green,
              ),
            ),
            Container(
              height: size.height * 0.001,
              width: size.width * 0.3,
              color: Colors.green,
            ),
            //Grid View
            GalleryGridView(size: size),
          ],
        ),
      ),
    );
  }
}

