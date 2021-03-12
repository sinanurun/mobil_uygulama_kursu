void main() {
  Ogrenci ogrenci_01 = new Ogrenci();
  ogrenci_01._ad = "Serap";
  ogrenci_01._bolum = "Bilişim";
  ogrenci_01._dal = "Web Tasarım";
  ogrenci_01._numara = 10;
  print(ogrenci_01._numara);
  print(ogrenci_01._okul);
  ogrenci_01.kayit();

  Ogrenci ogrenci_02 =
      new Ogrenci.nameCons("Filiz", "Bilişim", "Veri Tabanı", 1);
  // get metodu çalışıyor
  print(ogrenci_02.ad);
// set metodu ile ad değeri değişiyor
  ogrenci_02.ad = "Koçak";
// get metodu ile çıktı oluşturuluyor
  print(ogrenci_02.ad);

  print(ogrenci_02._numara);
  print(ogrenci_02._okul);
  ogrenci_02.kayit();
}

class Ogrenci {
  String _ad;
  String _bolum;
  String _dal;
  int _numara;
  String _okul = "X okulu";
  // constructer methodu
  Ogrenci() {
    print("Öğrenci oluşturuldu");
  }

  Ogrenci.nameCons(String ad, String bolum, String dal, int numara) {
    this._ad = ad;
    this._bolum = bolum;
    this._dal = dal;
    this._numara = numara;
  }

  // saklanan veriyiye anlamlı erişim sağlıyoruz
  String get ad{
    return "öğrencinin adı "+this._ad;
  }
  // örneğin belirli özelliğini değişiyoruz, değişim erişim verişiyoruz
  void set ad(String isim){
    this._ad = isim;
  }


  void kayit() {
    print("ogrenci kaydedildi");
  }
}
