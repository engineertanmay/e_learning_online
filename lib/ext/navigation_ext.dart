import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

extension NavigationExt on State {
  void nextPage(BuildContext context, Widget screen) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => screen),
    );
  }

  nextPageReplacement(BuildContext context, Widget screen) {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => screen),
    );
  }

  Future<dynamic> nextPageWaitForResult(
      BuildContext context, Widget screen) async {
    return await Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => screen),
    );
  }
}
