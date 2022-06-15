import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/drwable.dart';

class Homepage extends StatelessWidget {
  final int days = 30;
  final String name = "aman kaintura";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("AK APP"),
      ),
      body: Center(
        child: Container(
          child: Text("Welcome to $days days of flutter $name"),
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
