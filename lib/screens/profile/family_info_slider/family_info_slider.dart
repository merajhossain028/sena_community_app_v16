import 'package:flutter/material.dart';
import 'package:sena_community_app/helpers/size_config/size_config.dart';

class FamilyInfoSlider extends StatefulWidget {
  const FamilyInfoSlider({Key? key}) : super(key: key);

  @override
  State<FamilyInfoSlider> createState() => _FamilyInfoSliderState();
}

class _FamilyInfoSliderState extends State<FamilyInfoSlider> {
  late PageController pageController;
  int pageNo = 0;

  @override
  void initState() {
    pageController = PageController(initialPage: 0);
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
      children: [
        SizedBox(
          height: size.height * 0.35,
          width: size.width * 0.6,
          child: PageView.builder(
            itemCount: 5,
            controller: pageController,
            onPageChanged: (index) => setState(() => pageNo = index),
            itemBuilder: (context, index) {
              return AnimatedBuilder(
                animation: pageController,
                builder: (context, child) {
                  return child!;
                },
                child: InkWell(
                  onTap: (){
                    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                      content: Text('This is a test'),
                    ));
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
                            child: Center(
                              child: Image.asset(
                                "assets/images/majid.jpeg",
                                fit: BoxFit.fitHeight,
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 5),
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisSize: mainMin,
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
                                ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              );
            },
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
