# yasam_beklentisi
This application is a Flutter app that calculates life expectancy based on user input and displays the results. The app consists of 2 different pages and 8 different classes.

## Getting Started
The application starts by assigning the InputPage to the home property of the MaterialApp widget in the main.dart file. InputPage is a page where the user enters the necessary data for calculating life expectancy. These data are obtained through buttons and a slider bar, and assigned to the corresponding variables.

The constructor of the object created from the "user_data" page keeps all the entered data in one object. Through the necessary navigation processes, these data are transferred to the "result_page" page.

The ResultPage processes the received data using the calculation method of the "calculation.dart" class and displays the results to the user. Additionally, for icons and styles, classes like "constants" and "IconGender" have been created to ensure code readability and organization.

![2024-03-03 16_07_25-bilgi_testi – TestVeri dart  bilgi_testi](https://github.com/seymaa54/flutter_ile_uygulama_gelistirme/assets/127548963/a25b02ac-7c47-4ca7-b259-782e5b3524af)
![2024-03-03 16_07_37-bilgi_testi – TestVeri dart  bilgi_testi](https://github.com/seymaa54/flutter_ile_uygulama_gelistirme/assets/127548963/c2e10598-67af-48d5-86d9-9cfd1a0a4892)
