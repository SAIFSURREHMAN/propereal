import 'package:flutter/material.dart';

class EligiblityScreenProvider extends ChangeNotifier {
  bool _isRed = false;

  bool get isRed => _isRed;

  void changeColor() {
    _isRed = !_isRed;
    notifyListeners();
  }
}
