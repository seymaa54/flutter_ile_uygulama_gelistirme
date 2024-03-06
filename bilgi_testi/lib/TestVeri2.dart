import 'dart:math';

import 'package:bilgi_testi/TestVeri.dart';

import 'soru.dart';

class TestVeri2 extends TestVeri {
  TestVeri2() {
    soruBankasi = [
      Soru(soruMetni: 'a) 2 + 2 = 4', soruYaniti: true),
      Soru(soruMetni: 'b) 9 / 3 =1?', soruYaniti: false),
      Soru(soruMetni: 'c) 5 * 6 =30', soruYaniti: true),
      Soru(soruMetni: 'd) 12 - 7 = 5', soruYaniti: true),
      Soru(soruMetni: 'e) √25 = 3 ', soruYaniti: false),
      Soru(soruMetni: 'f) 7^2  = 49', soruYaniti: true),
      Soru(soruMetni: 'g) 3 + 5  = 8', soruYaniti: true),
    ];
  }

 /* @override int indexArttir() {
    if(soruBankasi.length)
    Random random = Random();
   soruIndex= random.nextInt(7) ;
  }*/
}
