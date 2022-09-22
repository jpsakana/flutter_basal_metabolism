import 'package:flutter/material.dart';
import 'view/top_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demox',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const TopView(),
    );
  }
}
