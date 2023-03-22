import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Welcome(),
            SizedBox(height: 4),
            Title(),
          ],
        ),
        const Icon(Icons.account_circle, size: 40),
      ],
    );
  }
}

class Title extends StatelessWidget {
  const Title({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Text('Enzo\'s Portfolio ',
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 28,
        ));
  }
}

class Welcome extends StatelessWidget {
  const Welcome({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Text('Welcome again! :)',
        style: TextStyle(
          fontSize: 20,
        ));
  }
}
