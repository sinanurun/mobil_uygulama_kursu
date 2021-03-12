void main(){
  Ogrenci ogrenci_01 = new Ogrenci();
  ogrenci_01.ad = "Serap";
  ogrenci_01.bolum = "Bilişim";
  ogrenci_01.dal = "Web Tasarım";
  ogrenci_01.numara = 10;
  print(ogrenci_01.numara);
  print(ogrenci_01.okul);
  ogrenci_01.kayit();

  Ogrenci ogrenci_02 = new Ogrenci();
  ogrenci_02.ad = "Filiz";
  ogrenci_02.bolum = "Bilişim";
  ogrenci_02.dal = "Veri Tabanı";
  ogrenci_02.numara = 1;
  print(ogrenci_02.numara);
  print(ogrenci_02.okul);
  ogrenci_02.kayit();
}

class Ogrenci{
  // constructer methodu
  Ogrenci(){
    print("Öğrenci oluşturuldu");
  }
  String ad;
  String bolum;
  String dal;
  int numara;
  String sinif;
  String okul = "X okulu";

  void kayit(){
    print("ogrenci kaydedildi");
  }

}