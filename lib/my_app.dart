import 'package:flutter/material.dart';
import 'package:flutter_starter/ui/splash_ui.dart';
import 'package:get/get.dart';
import 'package:responsive_x/responsive_x.dart';

import 'utils/lang/app_localizations.dart';
import 'utils/theme/theme_data.dart';
import 'utils/theme/themes.dart';

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return OrientationBuilder(builder: (context, orientation) {
        SizeConfig(
          designScreenWidth: 392,
          designScreenHeight: 781,
        ).init(constraints, orientation);
        return GetMaterialApp(
          title: 'Flutter Starter',
          debugShowCheckedModeBanner: false,
          showPerformanceOverlay: false,
          locale: LocalizationService.getLocal(),
          fallbackLocale: LocalizationService.fallbackLocale,
          translations: LocalizationService(),
          themeMode: ThemeService.theme,
          darkTheme: Themes.dark,
          theme: Themes.light,
          home: SplashScreenUI(),
        );
      });
    });
  }
}
