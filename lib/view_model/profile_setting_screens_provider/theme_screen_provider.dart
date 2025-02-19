import 'package:flutter/material.dart';

class ThemeScreenProvider with ChangeNotifier {
  List<Map<String,dynamic>> themeTile = [

  {"imagePath": "assets/icons/light_mode.png",
      "title": "Light mode",},
    {"imagePath": "assets/icons/dark_mode.png",
      "title": "Dark mode",},
    {"imagePath": "assets/icons/system_default.png",
      "title": "System Default",},
  ];

  int _isThemeSelected = 0;

  int get isThemeSelected => _isThemeSelected;

  void selectTheme(int index) {
    if (_isThemeSelected != index) {
      _isThemeSelected = index;
      notifyListeners();
    }
  }
}
