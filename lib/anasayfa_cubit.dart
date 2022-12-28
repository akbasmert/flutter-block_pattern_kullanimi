import 'package:flutter_bloc/flutter_bloc.dart';

import 'matematik_repository.dart';

class AnasayfaCubit extends Cubit<int> { //anasayfadaki yöneteceğimiz değer int olduğu için (int sonuc )
  AnasayfaCubit():super(0); // varsayılan değer (ilk çalıştığında atanan değer

  var mrepo = MetematikRepostory();

  void toplamaYap(String alinanSayi1, String alinanSayi2){
 /* int sayi1 = int.parse(alinanSayi1);
  int sayi2 = int.parse(alinanSayi2);
  int toplam = sayi1 + sayi2;
  emit(toplam); //emit yapısını kullanarak toplamı yaydık.
*/
    emit(mrepo.topla(alinanSayi1, alinanSayi2)); // repostroy kullandığımız için yukarıdaki kodlara gerek kalmadı
}


void carpmaYap(String alinanSayi1, String alinanSayi2){
 /* int sayi1 = int.parse(alinanSayi1);
  int sayi2 = int.parse(alinanSayi2);
  int carpma = sayi1 * sayi2;
 emit(carpma); //emit yapısını kullanarak toplamı yaydık.
*/
  emit(mrepo.carp(alinanSayi1, alinanSayi2)); // repostory kullandığımız için yukarıdaki kodlara gerek kalmadı
}

// Bu yapıda amaç setState ile tüm sayfayı yenilemektense sadece ekrandaki texti yeniledik.
// Verileri buraya yollayarak işlemleri burada yaptık.
// Normalde anasayfade Text değiştiği için stateful widget olmalıydı
// ama cubit olduğu için stalss widget ile de işlerimizi halledebiliyoruz.

}