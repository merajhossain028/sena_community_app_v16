import 'package:flutter/material.dart';
class GalleryGridView extends StatelessWidget {
  const GalleryGridView({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: size.height * 0.3,
      width: size.width,
      child: GridView.count(
        crossAxisCount: 2,
        childAspectRatio: (size.width / 2) / (size.height * 0.3),
        children: [
          Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.white, width: 3.0),
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10.0),
              child: Image.asset("assets/images/majid.jpeg"),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.white, width: 3.0),
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10.0),
              child: Image.asset("assets/images/majid.jpeg"),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.white, width: 3.0),
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10.0),
              child: Image.asset("assets/images/majid.jpeg"),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.white, width: 3.0),
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10.0),
              child: Image.asset("assets/images/majid.jpeg"),
            ),
          ),
        ],
      ),
    );
  }
}
