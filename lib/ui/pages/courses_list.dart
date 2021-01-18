import 'package:flutter/material.dart';
import 'package:flutter_starter/utils/const/property_const.dart';

class CoursesListClass {
  static ConstProperty coursesConst1 = ConstProperty.CoursesProperty(
      assetImgPath: "assets/img/icon_adobe_xd.png",
      title: "Adobe XD Prototyping",
      subtitle: "10 hours 19 lessons",
      details: "25%",
      icon: Icons.play_arrow_rounded);
  static ConstProperty coursesConst2 = ConstProperty.CoursesProperty(
      assetImgPath: "assets/img/icon_adobe_xd.png",
      title: "Adobe XD Prototyping",
      subtitle: "10 hours 19 lessons",
      details: "25%",
      icon: Icons.play_arrow_rounded);
  static ConstProperty coursesConst3 = ConstProperty.CoursesProperty(
      assetImgPath: "assets/img/icon_adobe_xd.png",
      title: "Adobe XD Prototyping",
      subtitle: "10 hours 19 lessons",
      details: "25%",
      icon: Icons.play_arrow_rounded);
  static ConstProperty coursesConst4 = ConstProperty.CoursesProperty(
      assetImgPath: "assets/img/icon_adobe_xd.png",
      title: "Adobe XD Prototyping",
      subtitle: "10 hours 19 lessons",
      details: "25%",
      icon: Icons.play_arrow_rounded);
  static List<ConstProperty> courseList = [
    coursesConst1,
    coursesConst2,
    coursesConst3,
    coursesConst4
  ];

  static Widget coursesListWidget() {
    return ListView.builder(
      scrollDirection: Axis.vertical,
        itemCount: 3,
        itemBuilder: (context, index) {
          return ListTile(
            leading:Image.asset(CoursesListClass.courseList[index].assetImgPath),
            title: Text(CoursesListClass.courseList[index].title,style: TextStyle(color: Colors.black),),
            subtitle: Text(CoursesListClass.courseList[index].subtitle),
            trailing: Icon(CoursesListClass.courseList[index].icon),
          );
        });
  }
}
