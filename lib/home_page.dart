import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  final int day = 30;
  final String name = "Madhur Tyagi";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Catalog App"),
      ),
      body: Center(
        child: Container(
          child: Text("Wellcome to $day days of flutter by $name"),
        ),
      ),
      drawer: Drawer(),
    );
  }
}
