import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTheme {
  static ThemeData get themedata => ThemeData(
      primarySwatch: Colors.deepOrange,
      fontFamily: GoogleFonts.poppins().fontFamily,
      appBarTheme: AppBarTheme(
          color: Colors.white,
          elevation: 0.0,
          iconTheme: IconThemeData(color: Colors.black),
          titleTextStyle: TextStyle(
            color: Colors.black,
            fontSize: 20,
          )),
      primaryTextTheme: GoogleFonts.latoTextTheme());

  //Colors
  static Color creamcolor = Color(0xfff5f5f5);
  static Color darkbluish = Color(0xff403b58);
}
