import 'package:flutter/material.dart';
import 'package:flutter_starter/ui/pages/choose_learn.dart';
import 'package:flutter_starter/ui/pages/elearning_list_widget.dart';
import 'package:flutter_starter/utils/const/font_styles.dart';
import 'package:flutter_starter/utils/const/image_assets.dart';
import 'package:flutter_starter/utils/lang/app_localizations.dart';
import 'package:flutter_starter/utils/lang/lang_cons.dart';
import 'package:flutter_starter/utils/sp/SpUtils.dart';
import 'package:flutter_starter/utils/theme/theme_data.dart';
import 'package:get/get.dart';
import 'package:responsive_x/responsive_x.dart';

class CoursesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            height: Get.height,
            width: Get.width,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  ImageAssetsConst.WELCOME_PAGE_BACKGROUND,
                ),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.2,
                ),
                //appbar centerRight onPressed button====================
                // ============================================================

                //welcome back text widget area===============================================
                //============================================================================
                Container(
                  alignment: Alignment.center,
                  child: Text(
                    "UI/UX \nCourses",
                    style: FontStyles.getDefaultFontStyle(
                        color: Colors.white, fontSize: 34.fontSize),
                    // fontStyle: FontStyle.italic,
                  ),
                ),

                SizedBox(
                  height: 20.height,
                ),
                // COURSES LIST WIDGET==========================================================================
                //==============================================================================================
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(40),
                          topLeft: Radius.circular(40.0)),
                      color: Colors.white,
                    ),
                    // height: 500.height,
                    width: MediaQuery.of(context).size.width,
                    child: ElearningListWidgetClass.coursesListWidget(),
                  ),
                ),

//continue button to go to next screen=============================
//=======================================================
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
                          Get.to(ChooseScreen());
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
