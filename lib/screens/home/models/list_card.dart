import 'package:flutter/material.dart';

// ignore: must_be_immutable
class UserListItem extends StatelessWidget {
  UserListItem({Key? key}) : super(key: key);

  List<Map<String, dynamic>> catagories = [
    {
      'image': 'assets/images/majid.jpeg',
      'name': ' Md Abdul Majid',
      'designation': 'Brigadier General (Retd)',
      'gc': '2375',
      'ba': '3264',
    },
    {
      'image': 'assets/images/majid.jpeg',
      'name': ' Md Abdul Majid',
      'designation': 'Brigadier General (Retd)',
      'gc': '2375',
      'ba': '3264',
    },
    {
      'image': 'assets/images/majid.jpeg',
      'name': ' Md Abdul Majid',
      'designation': 'Brigadier General (Retd)',
      'gc': '2375',
      'ba': '3264',
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        ...List.generate(
            catagories.length,
            (index) => InkWell(
                    child: ListCard(
                  image: catagories[index]['image'],
                  name: catagories[index]['name'],
                  designation: catagories[index]['designation'],
                  gc: catagories[index]['gc'],
                  ba: catagories[index]['ba'],
                  press: () => print('$index'),
                ))),
      ],
    );
  }
}

class ListCard extends StatelessWidget {
  ListCard({
    Key? key,
    required this.image,
    required this.name,
    required this.designation,
    required this.gc,
    required this.ba,
    required this.press,
  }) : super(key: key);

  final String image, name, designation, gc, ba;
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
                      Text('GC Number: $gc',
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
                          onPressed: () {},
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
