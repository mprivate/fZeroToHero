import 'package:flutter/material.dart';

const disneyLogo = './assets/Images/DisneyPlus_logo/disney_plus_logo.png';
const kToolbarHeight = 56.0;

AppBar disneyAppBar() {
  return AppBar(
    backgroundColor: Colors.transparent,
    elevation: 0,
    title: SizedBox(
      height: kToolbarHeight,
      child: Image.asset(
        "./assets/Images/DisneyPlus_logo/disney_plus_logo.png",
        fit: BoxFit.contain,
      ),
    ),
    toolbarHeight: kToolbarHeight,
  );
}
