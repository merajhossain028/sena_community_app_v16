import 'package:flutter/material.dart';

class FamilyInfoSlider extends StatefulWidget {
  const FamilyInfoSlider({Key? key}) : super(key: key);

  @override
  State<FamilyInfoSlider> createState() => _FamilyInfoSliderState();
}

class _FamilyInfoSliderState extends State<FamilyInfoSlider> {
  late PageController pageController = PageController();
  int pageNo = 0;

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
    Size size = MediaQuery.of(context).size;
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          height: size.height * 0.35,
          width: size.width * 0.6,
          child: PageView.builder(
            controller: pageController,
            onPageChanged: (index) {
              pageNo = index;
              setState(() {});
            },
            itemBuilder: (_, index) {
              return AnimatedBuilder(
                animation: pageController,
                builder: (ctx, child) {
                  return child!;
                },
                child: Card(
                  child: Container(
                    height: size.height * 0.35,
                    width: size.width * 0.6,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          flex: 1,
                          child: Center(
                            child: Image.asset(
                              "assets/images/majid.jpeg",
                              fit: BoxFit.fitHeight,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 5),
                          child: Expanded(
                              flex: 1,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    "Captain Abdul Ahad",
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    "Present Occupation: Bangladesh Army ",
                                    style: TextStyle(
                                      fontSize: 12,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    "Spouse: Eleem Farzana",
                                    style: TextStyle(
                                      fontSize: 12,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    "Date of Birth: 15 October",
                                    style: TextStyle(
                                      fontSize: 12,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    "Alma Mater: Mirzapur Cadet College",
                                    style: TextStyle(
                                      fontSize: 12,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                ],
                              )),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
            itemCount: 5,
          ),
        ),
        const SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(
            5,
            (index) => GestureDetector(
              onTap: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text('You Tapped at $index'),
                  ),
                );
              },
              child: Container(
                margin: const EdgeInsets.all(2),
                child: Icon(
                  Icons.circle,
                  size: 12,
                  color: pageNo == index ? Colors.green : Colors.grey,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
