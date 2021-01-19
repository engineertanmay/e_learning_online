import 'package:flutter/material.dart';
import 'package:flutter_starter/ui/pages/elearning_list.dart';
import 'package:flutter_starter/utils/const/font_styles.dart';
import 'package:responsive_x/responsive_x.dart';
class ElearningListWidgetClass{



  //UI/UX DESIGN LIST WIDGET=====================================
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
                            fontSize: 12.fontSize,color:Color(0xffF18C8E))),
                    trailing: 
                       
                        Container(
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
                    subtitle: Text(CoursesListClass.courseList[index].subtitle,style:FontStyles.getDefaultFontStyle(color:Color(0xffF18C8E))),
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
}