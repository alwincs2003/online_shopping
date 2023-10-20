import 'package:flutter/material.dart';

class productscreenprovider with ChangeNotifier {
  int value = 1;
  void removefun() {
    value = value - 1;
    notifyListeners();
  }

  void addfun() {
    value = value + 1;
    notifyListeners();
  }

  String priceCal(int price) {
    int? total = price * value;
    print(total);
    notifyListeners();
    return total.toString();
  }
}
