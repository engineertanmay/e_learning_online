import 'dart:io';

import 'package:flutter/services.dart';
import 'package:flutter_starter/repo/api/network_config.dart';
import 'package:flutter_starter/ui/shared/SnackBarHelper.dart';
import 'package:flutter_starter/utils/logger.dart';
import 'package:get/get.dart';

void logout() {
  SnackBarHelper.showError("Session out! Please login again ...");
  // SpUtils.setLoginStatus(false, 1);
  Get.reset(clearFactory: true);
  // Get.offAll(SplashScreenUI());
}

void closeDialog() {
  if (Get.isDialogOpen) {
    Get.close(1);
  }
}

Future<void> pop({bool animated}) async {
  await SystemChannels.platform
      .invokeMethod<void>('SystemNavigator.pop', animated);
}

bool analysisError(e) {
  if (e?.error is SocketException) {
    SnackBarHelper.showError(NetworkConfig.noInternetMessage);
    Logger.e("Socket Exception: " + e.toString());
    return true;
  } else {
    SnackBarHelper.showError(NetworkConfig.errorMessage);
    Logger.e(e.toString());
    return false;
  }
}
