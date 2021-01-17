// import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:fimber/fimber.dart';
import '../ext/ext.dart';

class Logger {
  static var _isProduction = false;

  static init({production = false}) async {
    _isProduction = production;
    if (!_isProduction) {
      Fimber.plantTree(DebugTree.elapsed(useColors: true));
      //force stop crashlytics
      // await FirebaseCrashlytics.instance.setCrashlyticsCollectionEnabled(false);
    } else {
      // TODO: Add crashlytics
      // FlutterError.onError = FirebaseCrashlytics.instance.recordFlutterError;
    }
  }

  static e(String message, {Exception ex, StackTrace s}) {
    if (_isProduction) {
      //todo write into crashlytics
      return;
    }

    var date = DateTime.now().toLogDate();

    String tag = "Exception on -> $date :::: ";

    if (ex != null) {
      Fimber.e(tag + message, ex: ex, stacktrace: s ?? LogTree.getStacktrace());
    } else {
      Fimber.e(tag + message);
    }
  }

  static i(String message, {Exception ex, StackTrace s}) {
    if (_isProduction) return;

    var date = DateTime.now().toLogDate();

    String tag = "INFO on -> $date :::: ";

    if (!_isProduction) {
      Fimber.i("$tag $message", ex: ex, stacktrace: s);
    }

    if (ex != null) {
      Fimber.i(tag + message, ex: ex, stacktrace: s ?? LogTree.getStacktrace());
    } else {
      Fimber.i(tag + message);
    }
  }

  static w(String message, {Exception ex, StackTrace s}) {
    if (_isProduction) return;

    var date = DateTime.now().toLogDate();
    String tag = "Warning on -> $date ::::";

    if (ex != null) {
      Fimber.w(tag + message, ex: ex, stacktrace: s ?? LogTree.getStacktrace());
    } else {
      Fimber.w(tag + message);
    }
  }

  static d(String message, {Exception ex, StackTrace s}) {
    if (_isProduction) return;
    var date = DateTime.now().toLogDate();
    String tag = "Debug on -> $date :::: ";

    if (ex != null) {
      Fimber.d(tag + message, ex: ex, stacktrace: s ?? LogTree.getStacktrace());
    } else {
      Fimber.d(tag + message);
    }
  }

  static v(String message, {Exception ex, StackTrace s}) {
    if (_isProduction) return;
    var date = DateTime.now().toLogDate();
    String tag = "Verbose on -> $date :::: ";

    if (ex != null) {
      Fimber.v(tag + message, ex: ex, stacktrace: s ?? LogTree.getStacktrace());
    } else {
      Fimber.v(tag + message);
    }
  }
}
