import 'package:flutter/material.dart';

class ProviderCounter extends ChangeNotifier {
  int counter = 0;

  bool isSucceful = false;

  void showBox() {
    isSucceful = true;
    notifyListeners();
  }

  void closeBox() {
    isSucceful = false;
    notifyListeners();
  }

  void increment() {
    counter++;
    notifyListeners();
  }

  void decrement() {
    counter--;
    notifyListeners();
  }
}
