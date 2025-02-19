import 'package:flutter/material.dart';

class NotificationsScreenProvider with ChangeNotifier{

  bool _isNewFollowerSwitchOn = false;
  bool get isNewFollowerSwitchOn => _isNewFollowerSwitchOn;

  bool _isNewEventSwitchOn = false;
  bool get isNewEventSwitchOn => _isNewEventSwitchOn;

  bool toggleNewFollowerSwitch(bool value){
    if(_isNewFollowerSwitchOn != value){
      _isNewFollowerSwitchOn = value;
      notifyListeners();

    }
    return true;
  }
  bool toggleNewEventSwitch(bool value){
    if(_isNewEventSwitchOn != value){
      _isNewEventSwitchOn = value;
      notifyListeners();
    }
    return true;
  }

}