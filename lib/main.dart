import 'package:flutter/material.dart';
import 'package:myapp/core/store.dart';
import 'package:myapp/pages/cart_page.dart';
import 'package:myapp/pages/home_page.dart';
import 'package:myapp/pages/login_page.dart';
import 'package:myapp/utils/routes.dart';
import 'package:myapp/widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';

void main(List<String> args) {
  runApp(VxState(
    store: MyStore(),
    child: MyApp()));
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
