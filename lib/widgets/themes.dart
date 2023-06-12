import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';

class MyTheme {
  static ThemeData lightTheme(BuildContext context) => ThemeData(
        primarySwatch: Colors.purple,
        fontFamily: GoogleFonts.poppins().fontFamily,
        cardColor: Colors.white,
        canvasColor: creamColor,
        buttonColor: darkBluish,
        accentColor: darkBluish,
        appBarTheme: AppBarTheme(
          color: Colors.white,
          elevation: 0.0,
          iconTheme: IconThemeData(color: Colors.black),
          titleTextStyle: Theme.of(context).textTheme.titleLarge,
        ),
      );

  static ThemeData darkTheme(BuildContext context) => ThemeData(
    brightness: Brightness.dark,
      fontFamily: GoogleFonts.poppins().fontFamily,
      cardColor: Colors.black,
      canvasColor: darkcreamColor,
      buttonColor: lightBluish,
      accentColor: Colors.white,
      appBarTheme: AppBarTheme(
        color: Colors.black,
        elevation: 0.0,
        iconTheme: IconThemeData(color: Colors.white),
        titleTextStyle: Theme.of(context).textTheme.titleLarge,
      ));
  static const Color creamColor = Color(0xfff5f5f5);
  static const darkcreamColor = Vx.gray900;
  static const Color darkBluish = Color(0xff403b58);
  static const Color lightBluish = Vx.indigo500;
}
