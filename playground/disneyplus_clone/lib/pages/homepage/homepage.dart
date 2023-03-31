import 'package:disneyplus_clone/widgets/disneyAppBar/disneyappbar.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: disneyAppBar());
  }
}
