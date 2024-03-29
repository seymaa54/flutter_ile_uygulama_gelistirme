
import 'TestVeri.dart';
import 'soru.dart';
// testveri classından nesne yaratcağım zaman bu listede default olarak gelecek.

class TestVeri1 extends TestVeri {

  /* her bir soruyu ve cevabını ayrı listelerde tutmak yerine tek bir listede,
  * Soru classından yarattğımız nesneleri <Soru> tutacağız.
  * Bunu yapmak kodun okunabilirliğini ve güvenilirliğini arttırır */
  TestVeri1() {
    soruBankasi = [
      Soru(soruMetni: '1.Titanic gelmiş geçmiş en büyük gemidir', soruYaniti: false),
      Soru(soruMetni: '2.Dünyadaki tavuk sayısı insan sayısından fazladır', soruYaniti: true),
      Soru(soruMetni: '3.Kelebeklerin ömrü bir gündür', soruYaniti: false),
      Soru(soruMetni: '4.Dünya düzdür', soruYaniti: false),
      Soru(soruMetni: '5.Kaju fıstığı aslında bir meyvenin sapıdır', soruYaniti: true),
      Soru(soruMetni: '6.Fatih Sultan Mehmet hiç patates yememiştir', soruYaniti: true),
      Soru(soruMetni: '7.Fransızlar 80 demek için, 4 - 20 der', soruYaniti: false),

    ];
  }

}

