import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(width: 0, height: 100),
            Container(
              padding: const EdgeInsets.all(25.0),
              decoration: BoxDecoration(
                color: Colors.blue,
                boxShadow: [
                  BoxShadow(
                      color: Colors.black.withOpacity(0.5),
                      offset: const Offset(0, 15),
                      blurRadius: 25)
                ],
                borderRadius: BorderRadius.circular(15.0),
                border: Border.all(color: Colors.black, width: 2),
              ),
              child: const Text(
                  'Welcome! My name is Enzo, and that\'s my portfolio.'),
            ),
            const ShowcaseBox(
                text: 'Disney+ clone App using Flutter',
                boxColor: Colors.white),
            const ShowcaseBox(
                text: 'AirBNB clone app using Flutter', boxColor: Colors.red),
          ],
        ),
      ),
    );
  }
}

class ShowcaseBox extends StatelessWidget {
  final Color boxColor;
  final double blurRadius;
  final String text;

  const ShowcaseBox({
    super.key,
    this.boxColor = Colors.blue,
    this.blurRadius = 25,
    this.text = 'Test',
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      margin: const EdgeInsets.only(top: 50),
      decoration: BoxDecoration(
        color: boxColor,
        boxShadow: [
          BoxShadow(
            color: Colors.black,
            offset: const Offset(0, 10),
            blurRadius: blurRadius,
          )
        ],
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.black, width: 1),
      ),
      child: Text(text),
    );
  }
}
