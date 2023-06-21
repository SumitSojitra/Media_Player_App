import 'package:flutter/cupertino.dart';

class musicProvider extends ChangeNotifier {
  double? slider;
  bool playS = true;
  void changeSlider(double n) {
    slider = n;
    notifyListeners();
  }

  void play(bool n) {
    playS = n;
  }
}
