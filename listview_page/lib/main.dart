import 'package:flutter/material.dart';

void main() {
  runApp(ListViewApp());
}

class ListViewApp extends StatefulWidget {
  const ListViewApp({super.key});

  @override
  State<ListViewApp> createState() => _ListViewAppState();
}

class _ListViewAppState extends State<ListViewApp> {
  var listItems = [
    ListTile(title: Text('Birinci Öğe'), tileColor: Colors.lightBlue),
    ListTile(title: Text('İkinci Öğe'), tileColor: Colors.pink),
    ListTile(title: Text('Üçüncü Öğe'), tileColor: Colors.yellow),
  ];

  @override
  Widget build(BuildContext context) {
    List<String> names = ['ali', 'metin', 'rıza', 'feyyaz'];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.orangeAccent,
          title: Text("ListView Demo"),
        ),
        body: Center(
          child: FractionallySizedBox(
            widthFactor: 0.8,
            heightFactor: 0.3,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.all(8),
              separatorBuilder: (context,_){
                return   Divider(height: 10,color: Colors.pink,);

              },
              itemCount: names.length,
              itemBuilder: (context, index) {
                var containers=names.map((name) => Container(child: Text(name),width: 100,height: 50,color: Colors.blue,margin: EdgeInsets.all(8),padding: EdgeInsets.all(8),)).toList();
                return containers[index];
              },
            ),
          ),
        ),
      ),
    );
  }
}
