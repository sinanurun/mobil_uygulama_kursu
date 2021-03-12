void main(){
  Araba otomobil01 = new Araba();
  print(otomobil01.marka);
 print(otomobil01.vites);
 print(otomobil01.beyir_gucu);

 Araba otomobil02 =  new Araba();
  print(otomobil02.marka);
  print(otomobil02.vites);
  print(otomobil02.beyir_gucu);
  otomobil02.mars();

  otomobil01.mars();
  otomobil01.hiz_arttir();
}
//post aynı içerik farklı
class Araba{
  Araba(){
  print("Araba Oluşturuldu");
  }
  String marka = "Toyata";
  String modeli = "Sedan";
  String vites_tipi = "Manuel";
  int vites = 6;
  int beyir_gucu = 125;
  int hiz = 120;

  void mars(){
    print("Araba Çalıştı");
  }

  void hiz_arttir(){
    print("Hızlandı");
  }
  void hiz_azalt(){
    print("Yavaşladı");
  }


}