import 'package:flutter/material.dart';
import 'package:flutter_starter/ui/pages/elearning_list.dart';
import 'package:flutter_starter/utils/const/font_styles.dart';
import 'package:flutter_starter/utils/const/image_assets.dart';
import 'package:responsive_x/responsive_x.dart';

class ElearningListWidgetClass {
  //UI/UX DESIGN LIST WIDGET=====================================
  //============================================================
  static Widget coursesListWidget() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: ListView.builder(
          scrollDirection: Axis.vertical,
          itemCount: CoursesListClass.courseList.length,
          itemBuilder: (context, index) {
            if (index % 2 == 0) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  color: Color(0xffFFE9F9),
                  child: ListTile(
                    leading: Image.asset(
                        CoursesListClass.courseList[index].assetImgPath),
                    title: Text(
                      CoursesListClass.courseList[index].title,
                      style: TextStyle(
                        fontSize: 14.fontSize,
                        color: Color(0xff305F72),
                      ),
                    ),
                    subtitle: Text(CoursesListClass.courseList[index].subtitle,
                        style: FontStyles.getDefaultFontStyle(
                            fontSize: 12.fontSize, color: Color(0xffF18C8E))),
                    trailing: Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.red,
                        ),
                        shape: BoxShape.circle,
                      ),
                      child: Icon(CoursesListClass.courseList[index].icon),
                    ),
                  ),
                ),
              );
            } else {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  color: Color(0xffEAF9FE),
                  child: ListTile(
                    leading: Image.asset(
                        CoursesListClass.courseList[index].assetImgPath),
                    title: Text(
                      CoursesListClass.courseList[index].title,
                      style: TextStyle(color: Color(0xff305F72)),
                    ),
                    subtitle: Text(CoursesListClass.courseList[index].subtitle,
                        style: FontStyles.getDefaultFontStyle(
                            color: Color(0xffF18C8E))),
                    trailing: Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.red),
                        shape: BoxShape.circle,
                      ),
                      child: Icon(CoursesListClass.courseList[index].icon),
                    ),
                  ),
                ),
              );
            }
          }),
    );
  }

  //CHOOSE WHAT TO LEARN LIST WIDGET==========================================
  //==========================================================================
  static Widget ChooseListWidget() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: ListView.builder(
          scrollDirection: Axis.vertical,
          itemCount: CoursesListClass.chooseList.length,
          itemBuilder: (context, index) {
            if (index % 2 == 0) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListTile(
                  leading: CircleAvatar(
                    radius: 30,
                    backgroundColor: Colors.grey,
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Container(
                        child: Image.asset(
                            CoursesListClass.chooseList[index].assetImgPath),
                      ),
                    ),
                  ),
                  title: Text(
                    CoursesListClass.chooseList[index].title,
                    style: TextStyle(
                      fontSize: 14.fontSize,
                      color: Color(0xff305F72),
                    ),
                  ),
                  subtitle: Text(CoursesListClass.chooseList[index].subtitle,
                      style: FontStyles.getDefaultFontStyle(
                          fontSize: 12.fontSize, color: Color(0xffF18C8E))),
                  trailing: CircleAvatar(
                    backgroundColor: Color(0xffF1BEBE),
                    child: Icon(
                      CoursesListClass.chooseList[index].icon,
                      color: Colors.red,
                    ),
                  ),
                ),
              );
            } else {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListTile(
                  leading: CircleAvatar(
                    radius: 30,
                    backgroundColor: Colors.grey,
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Container(
                        child: Image.asset(
                            CoursesListClass.chooseList[index].assetImgPath),
                      ),
                    ),
                  ),
                  title: Text(
                    CoursesListClass.chooseList[index].title,
                    style: TextStyle(color: Color(0xff305F72)),
                  ),
                  subtitle: Text(CoursesListClass.chooseList[index].subtitle,
                      style: FontStyles.getDefaultFontStyle(
                          color: Color(0xffF18C8E))),
                  trailing: CircleAvatar(
                    backgroundColor: Color(0xffF1BEBE),
                    child: Icon(
                      CoursesListClass.chooseList[index].icon,
                      color: Colors.red,
                    ),
                  ),
                ),
              );
            }
          }),
    );
  }

  // pick your plan screen LIST WIDGET==========================================
  //==========================================================================
  static Widget PickPlanListWidget() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: ListView.builder(
          scrollDirection: Axis.vertical,
          itemCount: CoursesListClass.pickPlanList.length,
          itemBuilder: (context, index) {
            
             if(index==0){
                return Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListTile(
                  title: Text(
                    CoursesListClass.pickPlanList[index].title,
                    style: TextStyle(
                      fontSize: 18.fontSize,
                      color: Color(0xffF18C8E),
                    ),
                  ),
                  subtitle: Text(CoursesListClass.pickPlanList[index].subtitle,
                      style: FontStyles.getDefaultFontStyle(
                          fontSize: 14.fontSize, color: Color(0xffF18C8E))),
                  trailing: Text(CoursesListClass.pickPlanList[index].name,
                      style: FontStyles.getDefaultFontStyle(fontSize: 25.fontSize,
                          color: Color(0xffF18C8E))),
                ),
              );
             }else{
                return Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListTile(
                  title: Text(
                    CoursesListClass.pickPlanList[index].title,
                    style: TextStyle(
                      fontSize: 18.fontSize,color: Colors.black,
                           ),
                  ),
                  subtitle: Text(CoursesListClass.pickPlanList[index].subtitle,
                      style: FontStyles.getDefaultFontStyle(
                          fontSize: 14.fontSize, color: Color(0xffF18C8E))),
                  trailing: Text(CoursesListClass.pickPlanList[index].name,
                      style: FontStyles.getDefaultFontStyle(fontSize: 25.fontSize,
                          color: Color(0xffF18C8E),)),
                ),
              );
             }
          
          }
          ),
    );
  }

  //adobe xd essential  LIST WIDGET==========================================
  //==========================================================================
  static Widget adobeListWidget() {
    bool value = false;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: ListView.builder(
          scrollDirection: Axis.vertical,
          itemCount: CoursesListClass.adobeList.length,
          itemBuilder: (context, index) {
            if (index == 0) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListTile(
                  leading: CircleAvatar(
                    radius: 30,
                    backgroundColor: Colors.grey,
                    child: Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Container(
                        child: Image.asset(ImageAssetsConst.ADOBE_AVATAR),
                      ),
                    ),
                  ),
                  title: Text(
                    "Mikolaj Galeziowski",
                    style: TextStyle(
                      fontSize: 14.fontSize,
                      color: Color(0xff305F72),
                    ),
                  ),
                  subtitle: Text("Author UI/UX Designer",
                      style: FontStyles.getDefaultFontStyle(
                          fontSize: 12.fontSize, color: Color(0xffF18C8E))),
                  trailing: CircleAvatar(
                    backgroundColor: Color(0xffF1BEBE),
                    child: Icon(
                      Icons.arrow_forward,
                      color: Colors.red,
                    ),
                  ),
                ),
              );
            } else {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListTile(
                  leading: CircleAvatar(
                    radius: 30,
                    backgroundColor: Colors.grey,
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Container(
                        child: Text(CoursesListClass.adobeList[index].name),
                      ),
                    ),
                  ),
                  title: Text(
                    CoursesListClass.adobeList[index].title,
                    style: TextStyle(
                      fontSize: 14.fontSize,
                      color: Color(0xff305F72),
                    ),
                  ),
                  subtitle: Text(CoursesListClass.adobeList[index].subtitle,
                      style: FontStyles.getDefaultFontStyle(
                          fontSize: 12.fontSize, color: Color(0xffF18C8E))),
                  trailing: CircleAvatar(
                    backgroundColor: Color(0xffF1BEBE),
                    child: Icon(
                      CoursesListClass.adobeList[index].icon,
                      color: Colors.red,
                    ),
                  ),
                ),
              );
            }
          }),
    );
  }
}
