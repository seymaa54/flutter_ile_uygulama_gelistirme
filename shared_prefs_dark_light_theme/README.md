# Theme Change and Use of Shared Preferences

This application is an example application that changes themes using Flutter and stores these changes in the application's memory using the SharedPreferences package.

## When starting up

The 'ThemeData' class is a data model class that represents the theme of the application.

ThemeColorData class is a class that changes the theme of the application and updates the application with these changes by redrawing all widgets.
This class extends the ChangeNotifier class and notifies listeners when the theme changes.

This class will save the changes using a local storage method such as SharedPreferences and load these saved values on application startup. In this way, the last contact of the application will be preserved when the user closes the application and opens it again or restarts the application.


## Basic Code Fragments

### ThemeData Class

A method called 'ThemeColor' returns 'ThemeData'. This method returns a "light" or "dark" theme based on the "_isLight" state.

darts
ThemeData get themeColor {
       return _isLight? light: dark;
}
''''
The toggleTheme() method handles the theme change and calls the notifyListeners() method to notify listeners that the theme has changed.
''''
void toggleTheme() {
       _isLight = !_isLight;
       saveThemeToSharedPref(_isLight);
       notifyListeners();
}
''''
The createSharedPrefobj() method provides access to SharedPreferences data.
''''
Future<void> createSharedPrefobj() async {
       _sharedPreferencesObject = SharedPreferences.getInstance() expected;
}

''''
The loadThemeFromSharedPref() method loads the SharedPreferences data and sets the theme at the start of the application.

''''
Future<void> loadThemeFromSharedPref() async {
       if (_isLight = _sharedPreferencesObject.getBool('themeData') == null) {
           _isLight = true;
       } Another {
           _isLight = _sharedPreferencesObject.getBool('themeData')!;
       }
}

''''
[Screen_recording_20240328_140604.webm](https://github.com/seymaa54/flutter_ile_uygulama_gelistirme/assets/127548963/6bcac6b0-b459-4c47-82ea-2b3b3463188d)

