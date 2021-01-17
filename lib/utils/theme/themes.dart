import 'package:flutter/material.dart';
import 'package:flutter_starter/utils/const/font_styles.dart';

class Themes {
  //light theme
  static final light = ThemeData.light().copyWith(
    buttonColor: Colors.blue,
    iconTheme: IconThemeData(color: Colors.black),
    bannerTheme: MaterialBannerThemeData(
      backgroundColor: Colors.yellow,
    ),
    bottomSheetTheme: BottomSheetThemeData(
      backgroundColor: Colors.white,
    ),
    splashColor: Colors.yellow,
    textTheme: TextTheme(
      headline5: FontStyles.getDefaultFontStyle(
        fontSize: 35.0,
      ),
      bodyText1: FontStyles.getDefaultFontStyle(
        fontSize: 25.0,
        fontWeight: FontWeight.bold,
        color: Colors.black,
      ),
    ),
  );

  //dark theme
  static final dark = ThemeData.dark().copyWith(
    buttonColor: Colors.red,
    iconTheme: IconThemeData(color: Colors.white),
    bannerTheme: MaterialBannerThemeData(
      backgroundColor: Colors.amber,
    ),
    bottomSheetTheme: BottomSheetThemeData(
      backgroundColor: Colors.grey[900],
    ),
    splashColor: Colors.grey[900],
    textTheme: TextTheme(
      headline5: FontStyles.getDefaultFontStyle(
        fontSize: 35.0,
        color: Colors.white,
        fontWeight: FontWeight.bold,
      ),
    ),
  );
}
