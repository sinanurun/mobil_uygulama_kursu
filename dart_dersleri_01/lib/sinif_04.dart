void main() {
  Araba otomobil01 = new Araba();
  print(otomobil01.marka);
  print(otomobil01.teker);
  //Araba otomobil02 = new Araba();

  Ford focus = new Ford();
  focus.vites = 8;


}

class Ford extends Araba{

  String tamir = "Sağlamdır";
  String slogan = "Alırsın Ford olursun Lord";

}

//post aynı içerik farklı
class Araba extends Arac{
  Araba() {
    print("Araba Oluşturuldu");
  }
  String marka;
  String modeli;
  String vites_tipi;
  int vites;
  int beyir_gucu;
  int hiz;

  void mars() {
    print("Araba Çalıştı");
  }

  void hiz_arttir() {
    print("Hızlandı");
  }

  void hiz_azalt() {
    print("Yavaşladı");
  }
}
class Arac{

  int teker = 4;
  bool egzos = true;
  bool dizel = true;
  String renk = "metal";


}