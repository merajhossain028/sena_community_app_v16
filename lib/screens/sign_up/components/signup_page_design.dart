import 'package:flutter/material.dart';

class SignUpDesign extends StatelessWidget {
  const SignUpDesign({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height,
      width: size.width,
      color: Colors.blue[50],
      child: Column(
        children: [
          Container(
            height: size.height * 0.4,
            width: size.width,
            decoration: BoxDecoration(
              color: Colors.green[300]!,
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(40),
                bottomRight: Radius.circular(40),
              ),
            ),
            child: Align(
              alignment: Alignment.topCenter,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  GestureDetector(
                    child: Stack(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            border:
                                Border.all(width: 5, color: Colors.white),
                            color: Colors.white,
                            boxShadow: const [
                              BoxShadow(
                                color: Colors.black12,
                                blurRadius: 20,
                                offset: Offset(5, 5),
                              ),
                            ],
                          ),
                          child: Icon(
                            Icons.person,
                            color: Colors.grey.shade300,
                            size: 80.0,
                          ),
                        ),
                        Container(
                          padding:
                              const EdgeInsets.fromLTRB(80, 80, 0, 0),
                          child: Icon(
                            Icons.add_circle,
                            color: Colors.grey.shade700,
                            size: 25.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
