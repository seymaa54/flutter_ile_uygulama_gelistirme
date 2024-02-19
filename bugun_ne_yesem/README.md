# What_to_eat_today

A simple interactive project with StatefulWidget in Flutter.

### StatefulWidget and StatelessWidget

StatelessWidget allows us to create a static structure. The `build` method runs only once.

StatefulWidget: The state of the widget is kept in a separate class called the State class. Changes are indicated with `setState`. The `setState` function is used to update the state within the StatefulWidget and notify Flutter about this change. When an operation that changes the state of the widget occurs, it is notified to Flutter by using the `setState` function. Flutter then redraws the interface by updating only the changed parts.

### Column, Center, Button

A column widget was defined to be centered. We provided a button feature to each image widget using the `TextButton`.

### Expanded

Commonly used within Column or Row, it allows children widgets to share available space along a specified axis.

- **onPressed:** Indicates the actions to be taken when the button is pressed.

A function named `imageYenile` was defined to create a new visual index when the button is pressed.

```dart
void imageYenile() {
  setState(() {
    // Importing the dart:math library
    // Defining a function that generates a random number between 1 and 5
    corbaNum = Random().nextInt(5) + 1;
    yNum = Random().nextInt(5) + 1;
    tNum = Random().nextInt(5) + 1;
  });
}
```
![](images/Screen_recording_20240219_161358.gif)

This function also includes the setState state and updates the data in the respective section every time the button is pressed.



