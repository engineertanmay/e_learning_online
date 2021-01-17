import 'package:flutter_starter/utils/sp/sp_constant.dart';
import 'package:get_storage/get_storage.dart';

class SpUtils {
  //login and singup control
  static bool checkIsLogin() {
    var box = GetStorage();
    var status = box.read<bool>(SpConst.LOGGED_IN) ?? false;
    return status;
  }

  static void setLoginStatus(bool status) {
    var box = GetStorage();
    box.write(SpConst.LOGGED_IN, status);
  }

  static String getLangCode() {
    var box = GetStorage();
    return box.read<String>(SpConst.LANG_CODE) ?? "en";
  }

  static void setLangCode(String code) {
    var box = GetStorage();
    box.write(SpConst.LANG_CODE, code);
  }
}
