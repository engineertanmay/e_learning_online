import 'package:flutter/material.dart';
import 'package:flutter_starter/utils/const/font_const.dart';
import 'package:flutter_starter/utils/sp/SpUtils.dart';
import 'package:get/get.dart';
import 'package:responsive_x/responsive_x.dart';

class FontStyles {
  static getDefaultFontStyle({
    double fontSize = 15.0,
    Color color = Colors.black,
    FontWeight fontWeight = FontWeight.normal,
  }) {
    return TextStyle(
      fontSize: fontSize.fontSize,
      fontFamily: _getDefaultFontFamily(),
      color: color,
      fontWeight: fontWeight,
    );
  }

  static String _getDefaultFontFamily() {
    // TODO add other languages fonts
    switch (SpUtils.getLangCode()) {
      case "en":
        return FontConstat.EN_DANCING;
        break;
      case "bn":
        return FontConstat.BN_SIYAM;
        break;
      default:
        return FontConstat.EN_DANCING;
    }
  }
}
