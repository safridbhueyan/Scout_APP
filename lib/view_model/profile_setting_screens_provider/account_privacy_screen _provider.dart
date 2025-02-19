import 'package:flutter/material.dart';

class AccountPrivacyScreenProvider with ChangeNotifier{

  bool _isPrivateAccountSwitchOn = false;
  bool get isPrivateAccountSwitchOn => _isPrivateAccountSwitchOn;

  bool togglePrivateAccountSwitch(bool value){
    if(_isPrivateAccountSwitchOn != value){
      _isPrivateAccountSwitchOn = value;
      notifyListeners();

    }
    return true;
  }

}