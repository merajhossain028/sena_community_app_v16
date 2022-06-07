import 'package:flutter/material.dart';

class VisionAlbum extends StatelessWidget {
  const VisionAlbum({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Vision 16 Album'),
        ),
        body: SafeArea(
          child: GridView.count(
            crossAxisCount: 2,
            children: [
              Card(
                elevation: 10,
                child: Column(
                  children: [
                    Image.asset(
                      'assets/images/v16.png',
                      height: 150,
                      width: 100,
                      fit: BoxFit.cover,
                    ),
                    const SizedBox(height: 5),
                    const Text(
                      'Course Get-Together 2022',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              Card(
                elevation: 10,
                child: Column(
                  children: [
                    Image.asset(
                      'assets/images/v16.png',
                      height: 150,
                      width: 100,
                      fit: BoxFit.cover,
                    ),
                    const SizedBox(height: 5),
                    const Text(
                      'Vision 16',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              Card(
                elevation: 10,
                child: Column(
                  children: [
                    Image.asset(
                      'assets/images/v16.png',
                      height: 150,
                      width: 100,
                      fit: BoxFit.cover,
                    ),
                    const SizedBox(height: 5),
                    const Text(
                      'Vision 16',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
