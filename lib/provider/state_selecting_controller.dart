import 'package:flutter/cupertino.dart';

class StateSelectingController extends ChangeNotifier {
  String _selectedState = "Dubai";
  String get selectingState => _selectedState;

  set setNewState(newValue) {
    _selectedState = newValue;
    notifyListeners();
  }
}
