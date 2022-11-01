import 'package:flutter/material.dart';

const Color bluishClr = Color(0xFF90CAF9);
const Color yeloowClr = Color(0xFFFFF59D);
const Color pinkClr = Color(0xFFF48FB1);
const Color white = Colors.white;
const primaryClr = bluishClr;
const Color darkGreyClr = Color(0xFF121212);
Color darkHeaderClr = Colors.grey.shade800;
class Themes{
  static final light = ThemeData(
    primaryColor: primaryClr,
    brightness: Brightness.light
  );

  static final dark = ThemeData(
    primaryColor: darkGreyClr,
    brightness: Brightness.dark
  );
}