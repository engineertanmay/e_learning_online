import 'package:flutter/material.dart';
import 'package:flutter_starter/controller/helper/controller_helper.dart';
import 'package:flutter_starter/repo/api/layers/AuthLayer.dart';
import 'package:flutter_starter/repo/api/models/api_response.dart';
import 'package:flutter_starter/repo/api/network_config.dart';
import 'package:flutter_starter/ui/shared/SnackBarHelper.dart';
import 'package:flutter_starter/utils/logger.dart';
import 'package:get/get.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class LoginController extends GetxController {
  AuthLayer _authLayer;
  // final GoogleSignIn _googleSignIn = GoogleSignIn();

  LoginController(this._authLayer);

  TextEditingController usernameController;
  TextEditingController passwordController;

  @override
  void onInit() {
    usernameController = TextEditingController();
    passwordController = TextEditingController();
    super.onInit();
  }

  void requestLogin() async {
    if (await NetworkConfig.checkInternet()) {
      SnackBarHelper.showError("No internet available");
      return;
    }

    SnackBarHelper.showLoading(
      "Logging...",
    );

    _authLayer
        .requestLogin(
            usernameController.text.trim(), passwordController.text.trim(), "1")
        .then((value) {
      if (Get.isSnackbarOpen) {
        Get.back();
      }
      analysisResponse(value);
    }).catchError((e, s) {
      Logger.e("Login try catch error", ex: e, s: s);
      analysisError(e);
    });
  }

  void analysisResponse(ApiResponse response) async {
    var status =
        NetworkConfig.getApiStatus(response.statusCode, response.message);
    switch (status) {
      case ApiResponseType.SUCCESS:
        // var user = UserModel.fromJson(response.data);
        // var userDetails = UserDataModel(
        //   userID: user.id,
        //   sessionID: user.sessionId,
        //   premium: user.isSubscribe.toInt() != 0,
        //   name: user.userName,
        //   subscribe: user.isSubscribe,
        // );

        // SpUtils.setUserDetails(user);

        //update sp value
        SnackBarHelper.showSuccess("Login Successful");
        // AppController app = Get.find(tag: "APP");
        // app.storeAllPlaylist();

        //delete login
        Get.delete(tag: "LOGIN");
        // Get.offAll(BottomNavPageUI());

        break;
      case ApiResponseType.ERROR:
        SnackBarHelper.showError(
            response.message ?? NetworkConfig.errorMessage);
        break;
      default:
        break;
    }
  }

  void requestLoginWithGoogle() async {
    // final GoogleSignInAccount googleSignInAccount =
    //     await _googleSignIn.signIn();

    // final GoogleSignInAuthentication googleSignInAuthentication =
    //     await googleSignInAccount.authentication;

    // var user = googleSignInAccount.email;
    // var socialID = googleSignInAccount.id;
  }

  @override
  void onClose() {
    usernameController?.dispose();
    passwordController?.dispose();
    super.onClose();
  }
}
