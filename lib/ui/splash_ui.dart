import 'package:flutter/material.dart';
import 'package:flutter_starter/utils/const/image_assets.dart';
import 'package:flutter_starter/utils/lang/app_localizations.dart';
import 'package:flutter_starter/utils/lang/lang_cons.dart';
import 'package:flutter_starter/utils/sp/SpUtils.dart';
import 'package:flutter_starter/utils/theme/theme_data.dart';
import 'package:get/get.dart';
import 'package:responsive_x/responsive_x.dart';

class SplashScreenUI extends StatelessWidget {
  const SplashScreenUI({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: kToolbarHeight.height + 30.height,
              ),
              Container(
                width: 250.width,
                color: context.theme.accentColor,
                child: InkWell(
                  onTap: () {
                    ThemeService.switchTheme();
                  },
                  child: ClipOval(
                    child: Image.asset(
                      ImageAssetsConst.SPLASH_BG_IMG,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 50.height,
              ),
              InkWell(
                onTap: () {
                  if (SpUtils.getLangCode() == "en") {
                    LocalizationService()
                        .changeLocale(LanguageConstant.BENGALI);
                  } else {
                    LocalizationService()
                        .changeLocale(LanguageConstant.ENGLISH);
                  }
                },
                child: Container(
                  alignment: Alignment.center,
                  child: Text(
                    "splash_header".tr,
                    style: context.textTheme.bodyText1,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
