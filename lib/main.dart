import 'package:flutter/material.dart';
import 'package:flutter_application_251267/home.dart';
//import 'package:flutter_application_251267/level1.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage()
    );
  }
}
