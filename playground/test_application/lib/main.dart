import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
            title: const Text('Reaver'),
            centerTitle: true,
            actions: <Widget>[
              IconButton(
                iconSize: 40,
                icon: Icon(Icons.wifi),
                onPressed: () {
                  print('null');
                },
              ),
            ]),
      ),
    );
  }
}
