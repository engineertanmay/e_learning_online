import 'package:flutter/material.dart';
import 'package:flutter_starter/di/config_inject.dart';
import 'package:flutter_starter/my_app.dart';
import 'package:flutter_starter/utils/logger.dart';
import 'package:get_storage/get_storage.dart';

void main() async {
  // init logger
  Logger.init();

  // inject first
  configureDependencies();

  // init storage
  await GetStorage.init();

  runApp(MyApp());
}
