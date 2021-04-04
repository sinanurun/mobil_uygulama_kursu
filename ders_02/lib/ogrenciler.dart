class Ogrenciler{
  List OgrenciList(){
    var ogrenci01 = ["1"];
    var ogrenci02 = ["2"];
    var ogrenci03 = ["3"];
    var ogrenci04 = ["4"];
    var ogrenci05 = ["5"];

    // ignore: deprecated_member_use
    List ogrenciListesi = new List();
    ogrenciListesi.add(ogrenci01);
    ogrenciListesi.addAll([ogrenci02,ogrenci03,ogrenci04,ogrenci05]);

    return ogrenciListesi;
  }
}