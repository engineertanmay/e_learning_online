import 'package:flappy_search_bar/flappy_search_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_starter/ui/pages/courses.dart';
import 'package:flutter_starter/ui/pages/elearning_list_widget.dart';
import 'package:flutter_starter/utils/const/font_styles.dart';
import 'package:flutter_starter/utils/const/image_assets.dart';
import 'package:flutter_starter/utils/lang/app_localizations.dart';
import 'package:flutter_starter/utils/lang/lang_cons.dart';
import 'package:flutter_starter/utils/sp/SpUtils.dart';
import 'package:flutter_starter/utils/theme/theme_data.dart';
import 'package:get/get.dart';
import 'package:responsive_x/responsive_x.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            height: Get.height,
            width: Get.width,
            decoration: BoxDecoration(
              color: Colors.white,
            ),
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.all(20),
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Welcome back \nMikotaj!",
                    style: FontStyles.getDefaultFontStyle(
                      fontWeight: FontWeight.bold,
                        color: Colors.black, fontSize: 34.fontSize),
                    // fontStyle: FontStyle.italic,
                  ),
                ),

                //START NEW LEARNING STAFF============================================
                //====================================================================

                Container(
                  margin: EdgeInsets.all(20),
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Color(0xffFEF3F3),
                    borderRadius: BorderRadius.circular(26),
                  ),
                  child: ListTile(
                    title: Text("Start learning new staff!",
                        style: FontStyles.getDefaultFontStyle(
                          color: Colors.black,
                          fontSize: 22.fontSize,
                        )),
                    subtitle: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Color(0xffF18C8E),
                          borderRadius: BorderRadius.circular(26),
                        ),
                        child: ListTile(
                          title: Text("Continuing",
                              style: FontStyles.getDefaultFontStyle(
                                color: Colors.white,
                              )),
                          trailing: Icon(Icons.arrow_forward,color:Colors.white),
                        ),
                      ),
                    ),
                    trailing:
                        Image.asset("assets/img/undraw_researching_22gp.png"),
                  ),
                ),

                // ListTile(
                //   title: Text(
                //     "Start learning new Staff! ",
                //     style: FontStyles.getDefaultFontStyle(
                //       fontSize: 25.fontSize,
                //     ),
                //   ),
                //   subtitle: RaisedButton(
                //     shape: RoundedRectangleBorder(
                //         borderRadius: BorderRadius.circular(18.0),
                //        ),
                //     onPressed: () {},
                //     color: Colors.red,
                //     child: ListTile(
                //       leading: Container(child: Text("Categories",style:FontStyles.getDefaultFontStyle(color:Colors.white,fontSize: 18.fontSize))),
                //          trailing: Icon(Icons.arrow_forward,color:Colors.white,),

                //       ),

                //   ),
                //   trailing:
                //       Image.asset("assets/img/undraw_researching_22gp.png"),
                // ),

                // SizedBox(
                //   height: 20.height,
                // ),
                //========CCOURSES IN PROGRESS TEXT WIDGET=========================
                //=================================================================
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30.0),
                  child: Container(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Courses in progress",
                      style: FontStyles.getDefaultFontStyle(
                          fontSize: 18.fontSize, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),

                // COURSES LIST WIDGET==========================================================================
                //==============================================================================================
                Expanded(
                  child: Container(
                    height: 500.height,
                    width: MediaQuery.of(context).size.width,
                    child: ElearningListWidgetClass.coursesListWidget(),
                  ),
                ),

                Align(
                  alignment: Alignment.bottomCenter,
                  child: ButtonTheme(
                    minWidth: 400.height,
                    height: 70.height,
                    child: RaisedButton(
                        elevation: 5,
                        child: ListTile(
                          title: Align(
                            alignment: Alignment.center,
                            child: Text("Continue with2",
                                style: TextStyle(
                                    fontSize: 20.fontSize,
                                    color: Color(0xffF18C8E))),
                          ),
                          trailing: Icon(Icons.arrow_forward),
                        ),
                        color: Color(0xffFEF3F3),
                        onPressed: () {
                          Get.to(CoursesScreen());
                        }),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
