# yasam_beklentisi
This application is a Flutter app that calculates life expectancy based on user input and displays the results. The app consists of 2 different pages and 8 different classes.

## Getting Started
The application starts by assigning the InputPage to the home property of the MaterialApp widget in the main.dart file. InputPage is a page where the user enters the necessary data for calculating life expectancy. These data are obtained through buttons and a slider bar, and assigned to the corresponding variables.

The constructor of the object created from the "user_data" page keeps all the entered data in one object. Through the necessary navigation processes, these data are transferred to the "result_page" page.

The ResultPage processes the received data using the calculation method of the "calculation.dart" class and displays the results to the user. Additionally, for icons and styles, classes like "constants" and "IconGender" have been created to ensure code readability and organization.