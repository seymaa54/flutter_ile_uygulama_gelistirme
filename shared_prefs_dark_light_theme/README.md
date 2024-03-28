# Theme Change and SharedPreferences Usage

This application demonstrates theme changes using Flutter and persists these changes in the application's memory using the SharedPreferences package.

## Startup

The `ThemeData` class serves as a data model representing the application's theme.

The `ThemeColorData` class manages theme changes in the application. It updates all widgets by redrawing them upon theme changes. This class extends the `ChangeNotifier` class and notifies listeners when the theme changes.

This class stores theme changes using local storage methods such as SharedPreferences. It loads these saved values upon application startup, preserving the application's last state when the user closes and reopens the application or restarts it.

## Basic Code Fragments

### ThemeColorData Class

The `themeColor` method returns `ThemeData`. It provides either a "light" or "dark" theme based on the `_isLight` state.

```dart
ThemeData get themeColor {
    return _isLight ? light : dark;
}
```
The toggleTheme() method manages theme changes. It calls the notifyListeners() method to inform listeners about theme changes.

```dart
void toggleTheme() {
    _isLight = !_isLight;
    saveThemeToSharedPref(_isLight);
    notifyListeners();
}
```
The createSharedPrefobj() method grants access to SharedPreferences data.

```dart
Future<void> createSharedPrefobj() async {
    _sharedPreferencesObject = await SharedPreferences.getInstance();
}
```

The loadThemeFromSharedPref() method loads SharedPreferences data and sets the theme at application startup.
```dart
Future<void> loadThemeFromSharedPref() async {
    if (_isLight = _sharedPreferencesObject.getBool('themeData') == null) {
        _isLight = true;
    } else {
        _isLight = _sharedPreferencesObject.getBool('themeData')!;
    }
}
```




[Screen_recording_20240328_140604.webm](https://github.com/seymaa54/flutter_ile_uygulama_gelistirme/assets/127548963/6bcac6b0-b459-4c47-82ea-2b3b3463188d)

