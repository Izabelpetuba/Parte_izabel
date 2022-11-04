import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

const Color bluishClr = Color(0xFF90CAF9);
const Color yeloowClr = Color(0xFFFFF59D);
const Color pinkClr = Color(0xFFF48FB1);
const Color white = Colors.white;
const primaryClr = bluishClr;
const Color darkGreyClr = Color(0xFF121212);
Color darkHeaderClr = Colors.grey.shade800;

class Themes{

  static final light = ThemeData(
    backgroundColor: Colors.white,
    primaryColor: primaryClr,
    brightness: Brightness.light
  );

  static final dark = ThemeData(
    backgroundColor: darkGreyClr,
    primaryColor: darkGreyClr,
    brightness: Brightness.dark
  );
}

TextStyle get subHeadingStyle{
  return GoogleFonts.lato(
    textStyle: TextStyle(
      fontSize: 24,
      fontWeight: FontWeight.bold,
      color: Get.isDarkMode?Colors.grey.shade400:Colors.grey,
    )
  );
}

TextStyle get headingStyle{
  return GoogleFonts.lato(
      textStyle: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold,
          color: Get.isDarkMode?Colors.white:Colors.black,
      )
  );
}

TextStyle get titleStyle{
  return GoogleFonts.lato(
      textStyle: TextStyle(
          fontSize: 16
        ,
          fontWeight: FontWeight.w400,
          color: Get.isDarkMode?Colors.white:Colors.black,
      )
  );
}

TextStyle get subTitleStyle{
  return GoogleFonts.lato(
      textStyle: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w400,
        color: Get.isDarkMode?Colors.grey.shade100:Colors.grey.shade600,
      )
  );
}