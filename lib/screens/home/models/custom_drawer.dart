// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:sena_community_app/screens/home/home.dart';
import 'package:sena_community_app/screens/login/login.dart';
import 'package:sena_community_app/screens/profile/profile.dart';

import 'package:sena_community_app/screens/v16_album/v16_album.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Drawer(
        child: Container(
          decoration: const BoxDecoration(
            color: Color(0xFF5CC260),
          ),
          child: ListView(
            // Important: Remove any padding from the ListView.
            padding: EdgeInsets.zero,
            children: [
              DrawerHeader(
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Color(0xFF013F04),
                      Color(0xFF69E96E),
                    ],
                  ),
                ),
                child: Column(
                  children: const [
                    CircleAvatar(
                      radius: 42,
                      backgroundColor: Colors.white,
                      backgroundImage: AssetImage('assets/images/v16.png'),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Vision 16',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10),
                  ],
                ),
              ),
              CustomListTile(
                icon: Icons.home,
                text: "Home",
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Home(),
                    ),
                  );
                },
              ),
              CustomListTile(
                  icon: Icons.album,
                  text: "Vision 16 Album",
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const VisionAlbum(),
                      ),
                    );
                  }),
              CustomListTile(
                  icon: Icons.person,
                  text: "My Profile",
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ProfilePage(),
                      ),
                    );
                  }),
              CustomListTile(
                  icon: Icons.person_add, text: "Edit Profile", onTap: () {}),
              CustomListTile(
                  icon: Icons.person_add_alt,
                  text: "Add Family Member Info",
                  onTap: () {}),
              CustomListTile(
                  icon: Icons.browse_gallery_rounded,
                  text: "Add Photo For Gallery",
                  onTap: () {}),
              CustomListTile(
                  icon: Icons.lock,
                  text: "Logout",
                  onTap: () {
                    FirebaseAuth.instance.signOut();
                  }),
            ],
          ),
        ),
      ),
    );
  }
}

// ignore: must_be_immutable
class CustomListTile extends StatelessWidget {
  const CustomListTile({
    Key? key,
    required this.icon,
    required this.text,
    required this.onTap,
  }) : super(key: key);

  final IconData icon;
  final String text;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: const BoxDecoration(
            border: Border(bottom: BorderSide(color: Color(0xFF013F04)))),
        child: InkWell(
          splashColor: Colors.greenAccent,
          onTap: onTap,
          child: SizedBox(
            height: 45,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(
                      icon,
                      color: Colors.white,
                    ),
                    const SizedBox(width: 10),
                    Text(
                      text,
                      style: const TextStyle(color: Colors.white),
                    ),
                  ],
                ),
                const Icon(
                  Icons.arrow_right,
                  color: Colors.white,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
