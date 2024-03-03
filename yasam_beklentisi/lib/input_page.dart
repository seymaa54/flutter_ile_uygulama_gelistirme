import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:yasam_beklentisi/constansts.dart';
import 'package:yasam_beklentisi/result_page.dart';
import 'package:yasam_beklentisi/user_data.dart';

import 'IconCinsiyet.dart';
import 'MyContainer.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  // Verileri aktarmak için:bu değişknleri tutan bir nesne yaratacağız.
  String seciliCinsiyet = "";
  double icilenSigara = 15;
  double gunSayisi = 3;
  int boy = 170;
  int kilo=60;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'YAŞAM BEKLENTİSİ',
            style: TextStyle(),
          ),
          centerTitle: true,
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: MyContainer(
                      child: buildRow('BOY',)
                    ),
                  ),
                  Expanded(
                    child: MyContainer(
                      child: buildRow('KİLO'),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: MyContainer(
                child: Column(
                  children: <Widget>[
                    Text(
                      'Haftada Kaç Gün Spor Yapıyorsunuz?',
                      style: kMetinStili,
                    ),
                    Text(
                      gunSayisi.round().toString(),
                      style: sayiStili,
                    ),
                    Slider(
                        min: 0,
                        max: 7,
                        divisions: 7,
                        value: gunSayisi,
                        onChanged:(double newValue) {
                          setState(() {
                            gunSayisi = newValue;
                          });
                        })
                  ],
                ),
              ),
            ),
            Expanded(
              child: MyContainer(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'Günde Kaç Sigara İçiyorsunuz',
                      style: kMetinStili,
                    ),
                    Text(
                      '${icilenSigara.round()}',
                      style: sayiStili,
                    ),
                    Slider(
                        min: 0,
                        max: 30,
                        value: icilenSigara,
                        onChanged: (double newValue) {
                          setState(() {
                            icilenSigara = newValue;
                          });
                        })
                  ],
                ),
              ),
            ),
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: MyContainer(
                        onPress: () {
                          setState(() {
                            seciliCinsiyet = 'KADIN';
                          });
                        },
                        renk: seciliCinsiyet == 'KADIN'
                            ? Colors.lightBlue[100]
                            : Colors.white,
                        child: IconCinsiyet(
                          icon: FontAwesomeIcons.venus,
                          text: 'KADIN',
                        )),
                  ),
                  Expanded(
                    child: MyContainer(
                      onPress: () {
                        setState(() {
                          seciliCinsiyet = 'ERKEK';
                        });
                      },
                      renk: seciliCinsiyet == 'ERKEK'
                          ? Colors.lightBlue[100]
                          : Colors.white,
                      child: IconCinsiyet(
                        icon: FontAwesomeIcons.mars,
                        text: 'ERKEK',
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 5,),
            Container(
                color: Colors.white,
              child: TextButton(
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>ResultPage(
                      UserData(seciliCinsiyet:seciliCinsiyet,
                        icilenSigara:icilenSigara,
                        gunSayisi:gunSayisi,
                          boy:boy,kilo:kilo,
                          )),
                    ));
                  },
                  child: Text('Hesapla',style:kMetinStili,),),
            )
          ],
        ));
  }

  Row buildRow(String label) {

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        RotatedBox(
            quarterTurns: -1,
            child: Text(
              label,
              style: kMetinStili,
            )),
        SizedBox(
          width: 10,
        ),
        RotatedBox(
            quarterTurns: -1,
            child: Text(
              label=='BOY'? boy.toString(): kilo.toString(),
              style: sayiStili,
            )),
        SizedBox(
          width: 10,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ButtonTheme(
              minWidth: 30,
              child: OutlinedButton(
                onPressed: () {
                  setState(() {
                    label=='BOY'? boy++ : kilo++;
                  });
                },
                child: Icon(
                  Icons.add,
                  size: 17,
                ),
              ),
            ),
            ButtonTheme(
              minWidth: 36,
              child: OutlinedButton(
                style: ButtonStyle(),
                onPressed: () {
                  setState(() {
                    label=='BOY'? boy-- : kilo--;
                  });
                },
                child: Icon(
                  Icons.remove,
                  size: 17,
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}
