import 'package:flutter/material.dart';

class SwitchScreenViewModel extends ChangeNotifier {
  bool _isOn = false;
  bool get isOn => _isOn;

  void switchMode() {
    _isOn = !_isOn;
    notifyListeners();
  }
}
