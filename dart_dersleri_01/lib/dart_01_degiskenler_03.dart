void main(){
  //sayisal veri tipleri int ve double kullanılıyor
  // int yas = 35;
  // print(yas);
  // double boy = 1.94; // double tanımlamak için . nokta kullnılır
  // print(boy);
  // String isim = "Veli";
  // //print(isim, yas, boy);
  // //çoklu değer yazımı için yöntemler
  // print(isim + " boyu : "+ boy.toString()+ " boyunda ve $yas yaşında" );
 var elemanlar = []; // dinamik boş liste tanımlama
 print(elemanlar);
 elemanlar.add("ali");
 elemanlar.add(12);
 print(elemanlar);
 // var boyut = elemanlar.length;
 // print(boyut);
 // elemanlar.remove(12);
 // print(elemanlar);

 List<String> isimler = [];
 isimler.add("Ayşe");
 isimler.add("Emine");
 print(isimler);
 isimler.add("Ali");

 var kursiyerler = ["Ali","Can","Veli"];

 kursiyerler.insert(1, "Kağan");
 print(kursiyerler);

 // ignore: deprecated_member_use
 var bebekler = new List(5);
 print(bebekler);
 print(bebekler.length);
 bebekler[0] = "Ayça";
 print(bebekler);
 //

}