import 'package:DynamicallyThemeData/shared/custom_theme_data_of_arif.dart';
import 'package:flutter/material.dart';

class ThemeDataModel extends ChangeNotifier {
  ThemeData _themeData = customThemeDataOfArif;

  ThemeData get getThemeData => _themeData;

  void setThemeData(ThemeData themeData) {
    _themeData = themeData;
    notifyListeners();
  }
}
