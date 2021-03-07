void main(){
  //sayisal veri tipleri int ve double kullanılıyor
  int yas = 35;
  print(yas);
  double boy = 1.94; // double tanımlamak için . nokta kullnılır
  print(boy);
  bool cevap = true;
  String isim = "Veli";
  print(isim + yas.toString() + boy.toString());
  //çoklu değer yazımı için yöntemler
  print(isim + " boyu : "+ boy.toString()+ " boyunda ve $yas yaşında" );
  print("adınız: $isim, boyunu: $boy, yaşınız: $yas");

}