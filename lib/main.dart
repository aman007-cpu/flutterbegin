import 'package:flutter/material.dart';
import 'package:flutter_application_1/Home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    const pi = 3.14;
    return MaterialApp(
      home: Homepage(),
    );
  }
}
