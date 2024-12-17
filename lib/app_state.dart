import 'package:flutter/material.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  int _proteinGoal = 0;
  int get proteinGoal => _proteinGoal;
  set proteinGoal(int value) {
    _proteinGoal = value;
  }

  int _fatGoal = 0;
  int get fatGoal => _fatGoal;
  set fatGoal(int value) {
    _fatGoal = value;
  }

  int _carbGoal = 0;
  int get carbGoal => _carbGoal;
  set carbGoal(int value) {
    _carbGoal = value;
  }

  int _calorieGoal = 0;
  int get calorieGoal => _calorieGoal;
  set calorieGoal(int value) {
    _calorieGoal = value;
  }
}
