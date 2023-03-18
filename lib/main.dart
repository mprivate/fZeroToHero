// Provides a complete set of widgets for us to work with.
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

/* 
Stateless Widget: that means that the widget won't contain data
that the user (or your app) can update at runtime (also known as state).
Basically, stateless widgets can't change, and can only be re-built.
*/

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    /* 
    Material app: widget that starts defining our application's UI.
    Not only that, but it provides useful functionality, such as 
    allowing us to navigate through our application with routes, and
    define a style theme.

    Scaffold: widget that allow us to build screens with common UI
    elements such as a bottom navigation bar, app bar, etc.
    */
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('My App'), // because title won't change.
        ),
        body: const Center(
          child: Text('Hello World'),
        ),
      ),
    );
  }
}
