import 'package:flutter/cupertino.dart';

class StateData with ChangeNotifier {
  //ChangeNotifier değişikil
  String sehir='Adana';

  void newCity(String city){
    sehir=city;
    notifyListeners();
  }
}