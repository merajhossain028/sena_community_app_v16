import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:sena_community_app/models/user_model.dart';
import 'package:sena_community_app/screens/profile/profile.dart';

// ignore: must_be_immutable
class UserListItem extends StatelessWidget {
  UserListItem({Key? key}) : super(key: key);

  
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<QuerySnapshot>(
      stream: FirebaseFirestore.instance.collection("users").snapshots(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(child: CircularProgressIndicator());
            }
            if (snapshot.hasError) {
              return const Center(child: Text('Error'));
            }
            List<UserModel> users = [];
            for (var doc in snapshot.data!.docs) {
               users.add(UserModel.fromDocument(doc));
            }
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ...List.generate(
                users.length,
                (index) => InkWell(
                        child: ListCard(
                      image: "assets/images/majid.jpeg",
                      name: users[index].name,
                      designation: users[index].designation,
                      ba: users[index].BAN,
                      // ignore: avoid_print
                      press: () => print('$index'),
                    ))),
          ],
        );
      }
    );
  }
}

class ListCard extends StatelessWidget {
  const ListCard({
    Key? key,
    required this.image,
    required this.name,
    required this.designation,
    required this.ba,
    required this.press,
  }) : super(key: key);

  final String image, name, designation, ba;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Card(
      elevation: 5.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
      child: Container(
        margin: const EdgeInsets.all(4),
        padding: const EdgeInsets.all(5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.0),
          gradient: const LinearGradient(
            colors: [
              Color(0xFF013F04),
              Color(0xFF69E96E),
            ],
          ),
        ),
        child: Column(
          children: [
            Row(
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.all(Radius.circular(20.0)),
                  child: Image.asset(image,
                      fit: BoxFit.fitHeight, height: 130, width: 130),
                ),
                const SizedBox(width: 10),
                Expanded(
                  //flex: 4,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(name,
                          style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16.0,
                              color: Colors.white)),
                      const SizedBox(height: 8.0),
                      Text('Designation: $designation',
                          style: const TextStyle(color: Colors.white)),
                      const SizedBox(height: 8.0),
                      Text('BA Number: $ba',
                          style: const TextStyle(color: Colors.white)),
                      SizedBox(
                        width: size.width * 0.3,
                        child: RawMaterialButton(
                          fillColor: Colors.white,
                          padding: const EdgeInsets.symmetric(vertical: 10.0),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const ProfilePage(),
                              ),
                            );
                          },
                          child: const Text(
                            "View Profile",
                            style: TextStyle(
                                color: Colors.green,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
