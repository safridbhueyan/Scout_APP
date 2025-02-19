import 'package:flutter/material.dart';
import 'package:scout_app/view/home_screen/home_screen.dart';
import 'package:scout_app/view/profile_screen/screen/profile_screen.dart';

import '../view/saved_event_screen/screen/saved_event_screen.dart';
import '../view/search_screen/screen/search_screen.dart';

class ParentScreenProvider with ChangeNotifier{

  final List<Widget> _parentScreens = [HomeScreen(), SearchScreen(),SavedEventScreen(), ProfileScreen()];
  List<Widget> get parentScreens => _parentScreens;


   int _selectedIndex = 0;
  int get selectedIndex => _selectedIndex;

  void selectScreen(int index){
    _selectedIndex = index;
    notifyListeners();
  }

}