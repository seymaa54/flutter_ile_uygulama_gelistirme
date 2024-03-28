import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_prefs_dark_light_theme/theme_data.dart';

Future<void> main()
/*runApp() metodu çalışmadan önce instance çağırılacak
bu instance çağıralana kadar beklenir daha sonra runApp çalışacak
 */
async {
  WidgetsFlutterBinding.ensureInitialized();
  await ThemeColorData().createSharedPrefobj();
  runApp(ChangeNotifierProvider<ThemeColorData>(
      create: (BuildContext context) => ThemeColorData(), child: MyApp()));
//ChangeNotifierProvider<ThemeColorData> :yayın yapılcak sınıf
//create:(BuildContext context)=>ThemeColorData() :instance
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //başlangıçta yeşil ile başlamaycak,veri okuncak ona göre başlatacağız.
    //context oluştuktan sonra yükleme ve dinleme yapılacak
    Provider.of<ThemeColorData>(context, listen: false)
        .loadThemeFromSharedPref();
    //widget inşa edilmeden önce gidip bu bilgiler okunacak

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      //yayını ihtiyacımız olan yerde okuyacağız
      //ThemeColorData sınıfının themeColor özelliğini dinler
      theme: Provider.of<ThemeColorData>(context).themeColor,
      /*uygulamamızın temasını provider ile dinlediğimiz ThemeColorData sınıfının
      themeColor metodundan alacağız.
       */
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      appBar: AppBar(
        title: Text('Tema Seçimi'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SwitchListTile(
              title: Provider.of<ThemeColorData>(context).isLight
                  ? Text("Açık Tema")
                  : Text("Koyu Tema",style: TextStyle(color: Colors.white),),
              onChanged: (_) {
                Provider.of<ThemeColorData>(context, listen: false)
                    .toggleTheme();
                //metot kendi içinde değişiklik yaptığı için --> listen:false
              },
              value: Provider.of<ThemeColorData>(context).isLight,
            ),
            Card(
              child: ListTile(
                title: Text("Yapılacaklar"),
                trailing: Icon(Icons.check_box),
              ),
            ),
            SizedBox(height: 8.0),
            ElevatedButton(
              child: Text("Ekle"),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
