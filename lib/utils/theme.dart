import 'package:flutter/material.dart';

const kColorPrimary = Color(0xFF8E97FD);
const kColorLightYellow = Color(0xFFFFECCC);
const kColorLightGrey = Color(0xFFEBEAEC);
const kColorDarkGrey = Color(0xFF3F414E);

class PrimaryFont {
  static String fontFamily = "HelveticaNeue";
  static TextStyle medium(double size) {
    return TextStyle(
      fontSize: size,
      fontFamily: fontFamily,
      fontWeight: FontWeight.w500,
    );
  }

  static TextStyle thin(double size) {
    return TextStyle(
      fontSize: size,
      fontFamily: fontFamily,
      fontWeight: FontWeight.w100,
    );
  }

  static TextStyle light(double size) {
    return TextStyle(
      fontSize: size,
      fontFamily: fontFamily,
      fontWeight: FontWeight.w300,
    );
  }

  static TextStyle bold(double size) {
    return TextStyle(
      fontSize: size,
      fontFamily: fontFamily,
      fontWeight: FontWeight.w700,
    );
  }
}
