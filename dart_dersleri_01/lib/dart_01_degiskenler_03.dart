void main(){
  //sayisal veri tipleri int ve double kullanılıyor
  int yas = 35;
  print(yas);
  double boy = 1.94; // double tanımlamak için . nokta kullnılır
  print(boy);
  String isim = "Veli";
  //print(isim, yas, boy);
  //çoklu değer yazımı için yöntemler
  print(isim + " boyu : "+ boy.toString()+ " boyunda ve $yas yaşında" );
 var elemanlar = [];
 elemanlar.add("ali");
 elemanlar.add(12);
 print(elemanlar);
 List<String> isimler = [];
 isimler.add("value");
 isimler.add("kamiller");
 print(isimler);

 var bebekler = new List(5);
 print(bebekler.length);


}