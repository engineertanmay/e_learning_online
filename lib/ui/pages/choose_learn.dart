import 'package:flutter/material.dart';
import 'package:flutter_starter/ui/pages/elearning_list_widget.dart';
import 'package:flutter_starter/ui/pages/pick_plan.dart';
import 'package:flutter_starter/utils/const/font_styles.dart';
import 'package:flutter_starter/utils/const/image_assets.dart';
import 'package:flutter_starter/utils/lang/app_localizations.dart';
import 'package:flutter_starter/utils/lang/lang_cons.dart';
import 'package:flutter_starter/utils/sp/SpUtils.dart';
import 'package:flutter_starter/utils/theme/theme_data.dart';
import 'package:get/get.dart';
import 'package:responsive_x/responsive_x.dart';

class ChooseScreen extends StatelessWidget {
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
                  child: Text("Choose what \nto learn",
                      style: FontStyles.getDefaultFontStyle(
                        color: Colors.white,
                        fontSize: 34.fontSize,
                        fontWeight: FontWeight.bold,
                      )
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
                    child: ElearningListWidgetClass.ChooseListWidget(),
                  ),
                ),

                //CONTINUE BUTTON WIDGET===================================
                //========================================================
                Container(
                  alignment: Alignment.bottomCenter,
                  child: RaisedButton(
                    onPressed: () {
                    Get.to(PickPlan());
                  },
                  child:Row(
                    children: [
                      Text("Continue"),
                      Icon(Icons.arrow_forward),
                    ],
                  ),
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
