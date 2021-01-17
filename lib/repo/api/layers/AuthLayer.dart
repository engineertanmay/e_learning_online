import 'package:flutter_starter/repo/api/api_layer/auth_api.dart';
import 'package:flutter_starter/repo/api/models/api_response.dart';
import 'package:flutter_starter/utils/logger.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class AuthLayer {
  AuthApi _authApi;

  AuthLayer(this._authApi);

  Future<ApiResponse> requestLogin(
      String email, String password, String userType) async {
    Logger.d("Email: " + email);
    Logger.d("Email: " + password);

    //http request
    var response = await _authApi.postLogin(
      email: email,
      // password: _encryptor.encrypt(password),
      password: password,
      userType: userType,
    );

    // return compute(parseApiResponse, response.data.toString());
    return ApiResponse.fromJson(response.data);
  }

  Future<ApiResponse> requestSignup(
      {String name, String email, String password, String userType}) async {
    var response = await _authApi.postSignup(
      username: name,
      email: email,
      // password: _encryptor.encrypt(password),
      password: password,
      userType: userType,
    );

    //move to bcg for longer
    // return await compute(parseApiResponse, response.data.toString());
    return ApiResponse.fromJson(response.data);
  }

  Future<ApiResponse> requestSignupOtp({String userID, String otpCode}) async {
    var response =
        await _authApi.postSignupVerify(userID: userID, otpCode: otpCode);
    // return await compute(parseApiResponse, response.data.toString());
    return ApiResponse.fromJson(response.data);
  }
}
