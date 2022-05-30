import 'package:flutter/material.dart';

// ignore: must_be_immutable
class UserListItem extends StatelessWidget {
  UserListItem({Key? key}) : super(key: key);

  List<Map<String, dynamic>> catagories = [
    {
      'image': 'assets/images/v16.png',
      'text': 'Niaz Morshed Elite',
      'date': '2022 National President',
      'chapter': 'JCI Dhaka Cosmopolitan ',
    },
    {
      'image': 'assets/images/v16.png',
      'text': 'Sarah Kamal',
      'date': '2022 Immediate Past National President ',
      'chapter': 'JCI Dhaka Cosmopolitan ',
    },
    {
      'image': 'assets/images/v16.png',
      'text': 'Erfan Haque',
      'date': '2022 National Executive Assistant to National President',
      'chapter': 'JCI Dhaka Central',
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
                  text: catagories[index]['text'],
                  date: catagories[index]['date'],
                  chapter: catagories[index]['chapter'],
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
    required this.text,
    required this.date,
    required this.press,
    required this.chapter,
  }) : super(key: key);

  final String image, text, date, chapter;
  final GestureTapCallback press;

  

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
      child: Container(
        margin: const EdgeInsets.all(4),
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(15.0)),
        child: Row(
          children: [
            ClipRRect(
                borderRadius: BorderRadius.circular(15.0),
                child: Image.asset(image,
                    fit: BoxFit.fitHeight, height: 100, width: 100)),
            const SizedBox(width: 10),
            Expanded(
                //flex: 4,
                child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                  Text(text,
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 16.0)),
                  const SizedBox(height: 8.0),
                  Text(date, style: const TextStyle(color: Colors.grey)),
                  const SizedBox(height: 8.0),
                  Text(chapter, style: const TextStyle(color: Colors.grey)),
                ])),
          ],
        ),
      ),
    );
  }
}
