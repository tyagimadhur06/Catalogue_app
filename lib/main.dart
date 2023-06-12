import 'package:flutter/material.dart';
import 'package:myapp/pages/cart_page.dart';
import 'package:myapp/pages/home_page.dart';
import 'package:myapp/pages/login_page.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/utils/routes.dart';
import 'package:myapp/widgets/themes.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.system,
      theme: MyTheme.lightTheme(context), 
      darkTheme: MyTheme.darkTheme(context),
      debugShowCheckedModeBanner: false,
      initialRoute: MyRoutes.loginRoute,
      routes: {
        "/" : (context) => LoginPage(),
        MyRoutes.homeRoute :(context) => HomePage(),
        MyRoutes.loginRoute:(context) => LoginPage(),
        MyRoutes.cartsRoute:(context) => CartPage(),
      },
    );
    return const Placeholder();
  }
}
