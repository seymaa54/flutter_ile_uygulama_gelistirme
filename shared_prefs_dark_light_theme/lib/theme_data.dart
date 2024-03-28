import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

ThemeData light = ThemeData(
    buttonTheme: ButtonThemeData(
      buttonColor:  Colors.blue.shade200,
    ),
    primarySwatch:  Colors.blue,
    scaffoldBackgroundColor:  Colors.blue.shade50,);

ThemeData dark = ThemeData(
    buttonTheme: ButtonThemeData(
      buttonColor:Colors.blue.shade500,
    ),
    primarySwatch: Colors.blue,
    scaffoldBackgroundColor: Colors.blue.shade900);

class ThemeColorData with ChangeNotifier {
  //veriyi yayınlayan sınıf bu sınıf old için yazma-okuma işlemleri
  //burada yapılır.
  static late SharedPreferences _sharedPreferencesObject;

  bool _isLight = true;

  bool get isLight => _isLight;

  ThemeData get themeColor {
    return _isLight ? light : dark;
  }

  void toggleTheme() {
    _isLight = !_isLight;
    saveThemeToSharedPref(_isLight);
    notifyListeners();
    /*
    değer değşiyor,yazma ,işlemi gerçekleştiriliyor,
    provider ile ekranları güncelliyoruz.
    */
  }

  Future<void> createSharedPrefobj() async {
    //bu metodun tanımlanması zaman alabilir
    _sharedPreferencesObject = await SharedPreferences.getInstance();
  }

  void saveThemeToSharedPref(bool value) {
    /*
    SharedPreferences nesnesinin setBool metodu aracılığıyla,
     'themeData' adında bir anahtarla, kullanıcının seçtiği tema
      değerini (value) kaydediyor.
     */
    _sharedPreferencesObject.setBool('themeData', value);
  }

  Future<void> loadThemeFromSharedPref() async {
    if (_isLight = _sharedPreferencesObject.getBool('themeData') == null) {
      _isLight = true;
    } else {
      _isLight = _sharedPreferencesObject.getBool('themeData')!;
    }
  }
}
