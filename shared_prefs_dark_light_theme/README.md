#  Tema Değişimi ve SharedPreferences Kullanımı

Bu uygulama, Flutter kullanarak dinamik olarak tema değişimi sağlayan ve SharedPreferences paketini kullanarak bu değişiklikleri uygulamanın hafızasında saklayan bir örnek uygulamadır.

## Başlarken

`ThemeData` sınıfı, uygulamanın temasını temsil eden bir veri modeli sınıfıdır.

`ThemeColorData` sınıfı, uygulamanın temasını değiştiren ve bu değişiklikleri tüm widget'ları yeniden çizerek uygulamanın güncellenmesini sağlayan bir sınıftır.
Bu sınıf, ChangeNotifier sınıfını genişletir ve teması değiştiğinde dinleyicilere bildirimde bulunur.

Bu sınıf değişiklikleri SharedPreferences gibi bir yerel depolama yöntemi kullanarak kaydedecek ve uygulamanın başlatılması sırasında bu kaydedilmiş değerleri yükleyecek. Bu sayede, uygulamanın son teması, kullanıcının uygulamayı kapatıp açtığında veya uygulamayı yeniden başlattığında korunacak.


## Temel Kod Parçaları

### ThemeData Sınıfı

`themeColor` adında bir metod, `ThemeData` değerini döndürür. Bu metod, `_isLight` durumuna göre `light` veya `dark` temasını döndürür.

```dart
ThemeData get themeColor {
    return _isLight ? light : dark;
}
```
toggleTheme() metodu, tema değişikliğini gerçekleştirir ve notifyListeners() metodunu çağırarak temanın değiştiğini dinleyicilere bildirir.
```
void toggleTheme() {
    _isLight = !_isLight;
    saveThemeToSharedPref(_isLight);
    notifyListeners();
}
```
createSharedPrefobj() metodu, SharedPreferences verilerine erişim sağlar.
```
Future<void> createSharedPrefobj() async {
    _sharedPreferencesObject = await SharedPreferences.getInstance();
}

```
loadThemeFromSharedPref() metodu, uygulamanın başlangıcında SharedPreferences verilerini yükler ve temayı ayarlar.

```
Future<void> loadThemeFromSharedPref() async {
    if (_isLight = _sharedPreferencesObject.getBool('themeData') == null) {
        _isLight = true;
    } else {
        _isLight = _sharedPreferencesObject.getBool('themeData')!;
    }
}

```