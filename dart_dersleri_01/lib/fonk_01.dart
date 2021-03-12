import 'dart:ffi';

void main(){
  merhaba();
 int r = 5;
 double daire_cevresi = cevre(r);
 print("$r yarı çaplı çemberin çevresi : $daire_cevresi");
  print(2*r*pi());
}

void merhaba(){
  print("merhaba");
}

double cevre(int r){
  double toplam_cevre = r*2*pi();
  print("--- $toplam_cevre");
  return toplam_cevre;
}

double pi(){
  double deger = 3.14;
  return deger;
}
