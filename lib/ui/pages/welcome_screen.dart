import 'package:flappy_search_bar/flappy_search_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_starter/ui/pages/elearning_list.dart';
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
            // height: Get.height,
            // width: Get.width,
            decoration: BoxDecoration(
              color: Colors.white,
            ),
            child: Column(
              children: [
                Container(
                  height: 400.height,
                  width: Get.width,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image:
                          AssetImage(ImageAssetsConst.WELCOME_PAGE_BACKGROUND),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(40),
                      bottomRight: Radius.circular(40),
                    ),
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.1,
                      ),
                      //welcome back text widget=====================================
                      //=============================================================
                      Container(
                        child: Text(
                          "Welcome back \nMikotaj!",
                          style: FontStyles.getDefaultFontStyle(
                              color: Colors.white, fontSize: 34.fontSize),
                          // fontStyle: FontStyle.italic,
                        ),
                      ),

                      //SEARCH BAR WIDGET==========================================
                      //=============================================================

                      Padding(
                        padding: const EdgeInsets.only(right: 30, left: 10),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          child: TextField(
                            textAlign: TextAlign.center,
                            decoration: InputDecoration(
                              suffixIcon: Icon(Icons.search_off_rounded),
                              hintText: 'Search for new knowledge!',
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                //START NEW LEARNING STAFF============================================
                //====================================================================

                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Container(
                    margin: const EdgeInsets.only(top: 250),
                    decoration: BoxDecoration(
                      color: Color(0xffFEF3F3),
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    child: ListTile(
                      title: Text(
                        "Start learning new Staff! ",
                        style: FontStyles.getDefaultFontStyle(
                          fontSize: 25.fontSize,
                        ),
                      ),
                      subtitle: RaisedButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0),
                            side: BorderSide(color: Colors.red)),
                        onPressed: () {},
                        color: Colors.red,
                        textColor: Colors.white,
                        child: Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(child: Text("Categories")),
                              Icon(Icons.arrow_forward),
                            ],
                          ),
                        ),
                      ),
                      trailing:
                          Image.asset("assets/img/undraw_researching_22gp.png"),
                    ),
                  ),
                ),

                SizedBox(
                  height: 20.height,
                ),
                //========CCOURSES IN PROGRESS TEXT WIDGET=========================
                //=================================================================
                Container(
                  child: Text(
                    "Courses in progress",
                    style: FontStyles.getDefaultFontStyle(),
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
              ],
            ),

            //appbar centerRight onPressed button====================
            // ============================================================

            //welcome back text widget area===============================================
            //============================================================================

            //========SEARCH BAR WIDGET==================================
            //================================================================
          ),
        ),
      ),
    );
  }
}
