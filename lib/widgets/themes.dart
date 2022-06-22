import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';

class MyTheme {
  static ThemeData lightTheme(BuildContext context) => ThemeData(
      primarySwatch: Colors.deepOrange,
      fontFamily: GoogleFonts.poppins().fontFamily,
      cardColor: Colors.white,
      canvasColor: darkcreamcolor,
      primaryColorDark: darkbluish,
      appBarTheme: AppBarTheme(
          color: Colors.white,
          elevation: 0.0,
          iconTheme: IconThemeData(color: Colors.black),
          titleTextStyle: TextStyle(
            color: Colors.black,
            fontSize: 20,
          )),
      primaryTextTheme: GoogleFonts.latoTextTheme());
  static ThemeData darkTheme(BuildContext context) => ThemeData(
        brightness: Brightness.dark,
        fontFamily: GoogleFonts.poppins().fontFamily,
        cardColor: Colors.black,
        canvasColor: darkcreamcolor,
        primaryColorDark: darkbluish,
        buttonColor: lightbluish,
        appBarTheme: AppBarTheme(
            color: Colors.black,
            elevation: 0.0,
            iconTheme: IconThemeData(color: Colors.white),
            titleTextStyle: TextStyle(
              color: Colors.white,
              fontSize: 20,
            )),
      );
  //Colors
  static Color creamcolor = Color(0xfff5f5f5);
  static Color darkcreamcolor = Color.fromARGB(255, 11, 11, 31);
  static Color darkbluish = Color(0xff403b58);
  static Color lightbluish = Vx.purple400;
}
