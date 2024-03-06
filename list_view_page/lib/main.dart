import 'package:flutter/material.dart';

void main() {
  runApp( ListViewPage());
}

class ListViewPage extends StatefulWidget {
  const ListViewPage({Key? key}) : super(key: key);

  @override
  State<ListViewPage> createState() => _ListViewPageState();
}

class _ListViewPageState extends State<ListViewPage> {
  var listItems = [
    ListTile(title: Text('Birinci Öğe'), tileColor: Colors.lightBlue,),
    ListTile(title: Text('İkinci Öğe'), tileColor: Colors.pink),
    ListTile(title: Text('Üçüncü Öğe'), tileColor: Colors.yellow),
  ];
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orangeAccent,
        title: const Text('ListView Demo'),
      ),
      body: Center(
        child: ListView(
          children: listItems,
        ),
      ),
    );
  }
}
