import 'package:flutter/material.dart';
import 'package:my_portfolio_test/widgets/cards/projectcard.dart';
import 'package:my_portfolio_test/widgets/header/header.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Header(),
              const SizedBox(height: 18),
              const MyProjects(),
              const SizedBox(height: 25),
              ProjectCard(
                title: 'My Project',
                year: '2023',
                image: 'assets/images/androidwrite.png',
                description: 'Some description',
              ),
              ProjectCard(
                title: 'My Project',
                year: '2023',
                image: 'assets/images/androidwrite.png',
                description: 'hello',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MyProjects extends StatelessWidget {
  const MyProjects({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.lightBlue,
        border: Border.all(color: Colors.lightBlue, width: 2),
        borderRadius: BorderRadius.circular(8),
      ),
      child: const Text(
        'Projects',
        style: TextStyle(
          fontSize: 23,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
      ),
    );
  }
}
