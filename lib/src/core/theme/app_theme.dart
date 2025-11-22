import 'package:flutter/cupertino.dart';

class AppTheme {
  static CupertinoThemeData light() {
    return const CupertinoThemeData(
      primaryColor: CupertinoColors.activeBlue,
      brightness: Brightness.light,
    );
  }
}
