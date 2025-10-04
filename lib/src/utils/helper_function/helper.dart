import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Helper {
  static double getScreenHeight(BuildContext context) {
    return MediaQuery.of(context).size.height;
  }

  static double getScreenWidth(BuildContext context) {
    return MediaQuery.of(context).size.width;
  }
}
