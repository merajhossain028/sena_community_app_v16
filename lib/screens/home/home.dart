import 'package:flutter/material.dart';
import 'components/body.dart';

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
              CustomListTile(Icons.home, "Home", () {}),
              CustomListTile(Icons.album, "Vision 16 Album", () {}),
              CustomListTile(Icons.person_add, "Edit Profile", () {}),
              CustomListTile(
                  Icons.person_add_alt, "Add Family Member Info", () {}),
              CustomListTile(
                  Icons.browse_gallery_rounded, "Add Photo For Gallery", () {}),
              CustomListTile(Icons.lock, "Logout", () {}),
            ],
          ),
        ),
      ),
    );
  }
}

// ignore: must_be_immutable
class CustomListTile extends StatelessWidget {
  IconData icon;
  String text;
  Function onTap;
  CustomListTile(this.icon, this.text, this.onTap, {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: const BoxDecoration(
            border: Border(bottom: BorderSide(color: Color(0xFF013F04)))),
        child: InkWell(
          splashColor: Colors.greenAccent,
          onTap: onTap(),
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
