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


      //CHOOSE WHAT TO LEARN PROPERTY=========================
      //========================================================
      ConstProperty.ChooseProperty(
      {@required this.assetImgPath,
      @required this.title,
      @required this.subtitle,
      @required this.icon});

  //pick plan list PROPERTY=========================
      //========================================================
 ConstProperty.PickPlanProperty(
      {@required this.name,
        @required this.assetImgPath,
        @required this.title,
      @required this.subtitle,
      @required this.icon});

      //adobe xd essential property==================================
      //================================================================
    
      ConstProperty.AdobeXdProperty(
      {@required this.name,
      @required this.title,
      @required this.subtitle,
      @required this.icon});
}
