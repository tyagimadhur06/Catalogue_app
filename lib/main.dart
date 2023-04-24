import 'package:flutter/material.dart';
import 'package:myapp/home_page.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:HomePage(),
    );
    return const Placeholder();
  }
}
