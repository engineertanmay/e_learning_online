import 'package:dio/dio.dart';
import 'package:flutter_starter/repo/api/web_service.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class AuthApi {
  Dio _dio;

  AuthApi(WebService service) {
    _dio = service.createWebService();
  }

  Future<Response> postLogin(
      {String email,
      String password,
      String deviceToken,
      String deviceType,
      String userType}) async {
    FormData formData = new FormData.fromMap({
      "userEmail": email,
      "userPassword": password,
      "userDeviceToken": deviceToken,
      "userDeviceType": deviceType,
      "userType": userType,
    });

    var response = await _dio.post(
      "RestUser/login",
      data: formData,
    );

    return response;
  }

  Future<Response> postSignup(
      {String username,
      String email,
      String password,
      String deviceToken,
      String deviceType,
      String userType}) async {
    FormData formData = new FormData.fromMap({
      "userName": username,
      "userEmail": email,
      "userPassword": password,
      "userDeviceToken": deviceToken,
      "userDeviceType": deviceType,
      "userType": userType,
    });

    var response = await _dio.post(
      "RestUser/signup",
      data: formData,
    );

    return response;
  }

  Future<Response> postSignupVerify(
      {String userID,
      String otpCode,
      String deviceToken,
      String deviceType}) async {
    FormData formData = new FormData.fromMap({
      "userID": userID,
      "opt_code": otpCode,
      "userDeviceToken": deviceToken,
      "userDeviceType": deviceType,
    });

    var response = await _dio.post(
      "RestUser/verifyAccount",
      data: formData,
    );

    return response;
  }

  Future<Response> postForgetPassword({String email}) async {
    FormData formData = new FormData.fromMap({
      "userEmail": email,
    });

    var response = await _dio.post(
      "RestUser/forgotPassword",
      data: formData,
    );

    return response;
  }

  Future<Response> postForgetPasswordOTP({String email, String otp}) async {
    FormData formData = new FormData.fromMap({
      "userID": email,
      "opt_code": otp,
    });

    var response = await _dio.post(
      "RestUser/optAuth",
      data: formData,
    );

    return response;
  }

  Future<Response> postForgetPasswordChangePassword(
      {String email, String password}) async {
    FormData formData = new FormData.fromMap({
      "userID": email,
      "userNewPassword": password,
    });

    var response = await _dio.post(
      "RestUser/changePassword",
      data: formData,
    );

    return response;
  }
}
