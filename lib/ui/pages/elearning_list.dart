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

  //CHOOSE WHAT TO LEARN COURSE LIST=============================================================
  //=============================================================================================
  static ConstProperty ChooseSingleList1 = ConstProperty.ChooseProperty(
      assetImgPath: "assets/img/icon_adobe_xd.png",
      title: "Adobe XD ",
      subtitle: "32 Courses",
      icon: Icons.check);
  static ConstProperty ChooseSingleList2 = ConstProperty.ChooseProperty(
      assetImgPath: "assets/img/After_Effects_Icon.png",
      title: "After Effect",
      subtitle: "100 Courses",
      icon: Icons.play_arrow_rounded);
  static ConstProperty ChooseSingleList3 = ConstProperty.ChooseProperty(
      assetImgPath: "assets/img/Icon_sketch.png",
      title: "Sketch",
      subtitle: "100 Courses",
      icon: Icons.play_arrow_rounded);
  static ConstProperty ChooseSingleList4 = ConstProperty.ChooseProperty(
      assetImgPath: "assets/img/Figma_icon.png",
      title: "Figma",
      subtitle: "25 Courses",
      icon: Icons.check);
  static ConstProperty ChooseSingleList5 = ConstProperty.ChooseProperty(
      assetImgPath: "assets/img/Photoshop_Icon.png",
      title: "Adobe photshop",
      subtitle: "130 Courses",
      icon: Icons.hourglass_empty_rounded);
  static List<ConstProperty> chooseList = [
    ChooseSingleList1,
    ChooseSingleList2,
    ChooseSingleList3,
    ChooseSingleList4,
    ChooseSingleList5,
  ];


//pick plan screen single  LIST=============================================================
  //=============================================================================================
  static ConstProperty pickPlanSingleList1 = ConstProperty.PickPlanProperty(
     name:"\u0024 0",
           assetImgPath: "assets/img/Photoshop_Icon.png",
           title: "Free Trail ",
      subtitle: "15 days",
      icon: Icons.check);
  static ConstProperty pickPlanSingleList2 = ConstProperty.PickPlanProperty(
     name:"\u0024 14.99",
          assetImgPath: "assets/img/Photoshop_Icon.png",
          title: "Medium",
      subtitle: "100 Courses",
      icon: Icons.play_arrow_rounded);
  static ConstProperty pickPlanSingleList3 = ConstProperty.PickPlanProperty(
     name:"\u0024 50.99",
           assetImgPath: "assets/img/Photoshop_Icon.png",
           title: "Intermadiate",
      subtitle: "100 Courses",
      icon: Icons.play_arrow_rounded);
  static ConstProperty pickPlanSingleList4 = ConstProperty.PickPlanProperty(
     name:"\u0024 56.21",
          assetImgPath: "assets/img/Photoshop_Icon.png",
          title: "Figma",
      subtitle: "25 Courses",
      icon: Icons.check);
  static ConstProperty pickPlanSingleList5 = ConstProperty.PickPlanProperty(
    name:"\u0024 25.25",
             assetImgPath: "assets/img/Photoshop_Icon.png",
            title: "Adobe photshop",
      subtitle: "130 Courses",
      icon: Icons.hourglass_empty_rounded);
  static List<ConstProperty> pickPlanList = [
    pickPlanSingleList1,
    pickPlanSingleList2,
    pickPlanSingleList3,
    pickPlanSingleList4,
    pickPlanSingleList5,
  ];
  //adobe xd essential list==============================================
  //=====================================================================
   static ConstProperty adobeSingleList1 = ConstProperty.AdobeXdProperty(
      name: "6",
      title: "Conclusion ",
      subtitle: "2 hours 20 minutes ",
      icon: Icons.check);
  static ConstProperty adobeSingleList2 = ConstProperty.AdobeXdProperty(
      name: "1",
      title: "introduction ",
      subtitle: "2 hours 20 minutes ",
      icon: Icons.play_arrow_rounded);
  static ConstProperty adobeSingleList3 = ConstProperty.AdobeXdProperty(
      name: "2",
      title: "Design Tools ",
      subtitle: "2 hours 20 minutes ",
      icon: Icons.play_arrow_rounded);
  static ConstProperty adobeSingleList4 = ConstProperty.AdobeXdProperty(
      name: "3",
      title: "Prototypeing Tools ",
      subtitle: "2 hours 20 minutes ",
      icon: Icons.play_arrow_rounded);
  static ConstProperty adobeSingleList5 = ConstProperty.AdobeXdProperty(
      name: "4",
      title: "Summary & Exercise ",
      subtitle: "2 hours 20 minutes ",
      icon: Icons.play_arrow_rounded);
  static ConstProperty adobeSingleList6 = ConstProperty.AdobeXdProperty(
      name: "5",
      title: "introduction ",
      subtitle: "2 hours 20 minutes ",
      icon: Icons.play_arrow_rounded);
  static ConstProperty adobeSingleList7 = ConstProperty.AdobeXdProperty(
      name: "6",
      title: "Conclusion ",
      subtitle: "2 hours 20 minutes ",
      icon: Icons.play_arrow_rounded);
     

  static List<ConstProperty> adobeList = [
    adobeSingleList1,
    adobeSingleList2,
    adobeSingleList3,
    adobeSingleList4,
    adobeSingleList5,
    adobeSingleList6,
    adobeSingleList7
  ];

//adobe xd essential widget lists================================================
//===============================================================================

}
