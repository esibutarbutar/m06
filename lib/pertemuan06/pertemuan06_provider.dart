import 'package:flutter/material.dart';

class Pertemuan06Provider extends ChangeNotifier {
  var light = ThemeData(
    brightness: Brightness.light,
    primarySwatch: Colors.purple,
  );

  var dark = ThemeData(
    brightness: Brightness.dark,
    primarySwatch: Colors.purple,
  );

  bool _enableDrakMode = false;
  bool get enableDrakMode => _enableDrakMode;

  set setBrightness(val) {
    _enableDrakMode = val;
    notifyListeners();
  }
}
