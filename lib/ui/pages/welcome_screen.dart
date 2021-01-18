import 'package:flutter/material.dart';
import 'package:flutter_starter/ui/pages/courses.dart';
import 'package:flutter_starter/ui/pages/courses_list.dart';
import 'package:flutter_starter/utils/const/font_styles.dart';
import 'package:flutter_starter/utils/const/image_assets.dart';
import 'package:flutter_starter/utils/lang/app_localizations.dart';
import 'package:flutter_starter/utils/lang/lang_cons.dart';
import 'package:flutter_starter/utils/sp/SpUtils.dart';
import 'package:flutter_starter/utils/theme/theme_data.dart';
import 'package:get/get.dart';
import 'package:responsive_x/responsive_x.dart';
import 'package:google_fonts/google_fonts.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            height: Get.height,
            width: Get.width,
            padding: const EdgeInsets.only(left: 20),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  ImageAssetsConst.WELCOME_PAGE_BACKGROUND,
                ),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //appbar centerRight onPressed button====================
                // ============================================================
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Container(
                    alignment: Alignment.centerRight,
                    child: new MaterialButton(
                      height: 40.0.height,
                      minWidth: 70.0.width,
                      color: Theme.of(context).primaryColor,
                      textColor: Colors.white,
                      child: Icon(Icons.list_alt_rounded),
                      onPressed: () => {
                        Get.to(Courses()),
                      },
                      splashColor: Colors.redAccent,
                    ),
                  ),
                ),

                //welcome back text widget area===============================================
                //============================================================================
                Container(
                  child: Text(
                    "Welcome back \nMikotaj!",
                    style: GoogleFonts.lato(
                      fontSize: 34.fontSize,
                      fontWeight: FontWeight.w700,
                      // fontStyle: FontStyle.italic,
                    ),
                  ),
                ),

                //========CCOURSES IN PROGRESS TEXT WIDGET=========================
                //=================================================================
                Container(
                  child: Text(
                    "Courses in progress",
                    style: FontStyles.getDefaultFontStyle(
                      
                    ),
                  ),
                ),

                // COURSES LIST WIDGET==========================================================================
                //==============================================================================================
                Expanded(
                  child: Container(
                    height: 500.height,
                    width: MediaQuery.of(context).size.width,
                    child: CoursesListClass.coursesListWidget(),
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
