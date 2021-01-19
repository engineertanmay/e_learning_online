import 'package:flutter/material.dart';
import 'package:flutter_starter/utils/const/property_const.dart';


class CoursesListClass {


  // UI/UX COURSES WIDGET  LIST =========================================
  //=====================================================================
  static ConstProperty coursesConst1 = ConstProperty.CoursesProperty(
      assetImgPath: "assets/img/icon_adobe_xd.png",
      title: "Adobe XD Prototyping",
      subtitle: "10 hours 19 lessons",
      details: "25%",
      icon: Icons.play_arrow_rounded);
  static ConstProperty coursesConst2 = ConstProperty.CoursesProperty(
      assetImgPath: "assets/img/After_Effects_Icon.png",
      title: "Adobe XD Prototyping",
      subtitle: "10 hours 19 lessons",
      details: "25%",
      icon: Icons.play_arrow_rounded);
  static ConstProperty coursesConst3 = ConstProperty.CoursesProperty(
      assetImgPath: "assets/img/Icon_sketch.png",
      title: "Adobe XD Prototyping",
      subtitle: "10 hours 19 lessons",
      details: "25%",
      icon: Icons.play_arrow_rounded);
  static ConstProperty coursesConst4 = ConstProperty.CoursesProperty(
      assetImgPath: "assets/img/Figma_icon.png",
      title: "Figma Assentials",
      subtitle: "10 hours 19 lessons",
      details: "25%",
      icon: Icons.play_arrow_rounded);
  static ConstProperty coursesConst5 = ConstProperty.CoursesProperty(
      assetImgPath: "assets/img/Photoshop_Icon.png",
      title: "Adobe photshop retouching",
      subtitle: "10 hours 19 lessons",
      details: "25%",
      icon: Icons.play_arrow_rounded);
  static List<ConstProperty> courseList = [
    coursesConst1,
    coursesConst2,
    coursesConst3,
    coursesConst4,
    coursesConst5,
  ];

  
}
