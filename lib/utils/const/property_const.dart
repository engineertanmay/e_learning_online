import 'dart:core';
import 'package:flutter/material.dart';

class ConstProperty {
   String name;
   String details;
   String title;
   String subtitle;
   String assetImgPath;
   IconData icon;
  // ConstProperty({@required });
  //Courses Constructor============================================================
  //==============================================================================
  ConstProperty.CoursesProperty(
      {@required this.assetImgPath,
      @required this.title,
      @required this.subtitle,
      @required this.details,
      @required this.icon});
}
