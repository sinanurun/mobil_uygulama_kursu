import 'dart:ui';

import 'package:flutter/material.dart';
import 'araclar.dart';
import 'main2.dart';
import 'package:ders_02/ogrenciler.dart';

void main() {
  runApp(Uygulamam());
}

class Uygulamam extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowMaterialGrid: false,
      title: "Ders 02 Uygulamasi",
      home: Icerik(),
    );
  }
}

class Icerik extends StatelessWidget {
  BuildContext get context => null;
  List ogrenciler = Ogrenciler().OgrenciList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Deneme başlığı",
          style: TextStyle(
            color: Colors.deepOrange,
          ),
        ),
      ),
      body: Container(
        color: Colors.amber,
        alignment: Alignment.topRight,
        margin: EdgeInsets.all(25.0),
        child: ListView(
          children: ogrenci_listesi(ogrenciler),
        ),
      ),
    );
  }

  List<Widget> ogrenci_listesi(List ogrenciler){
  for(var ogrencii in ogrenciler){
    return List(ogrenci(ogrencii));

  }

  }

  Widget ogrenci(List ogrenci){
  return Row(
  mainAxisAlignment: MainAxisAlignment.center,
  crossAxisAlignment: CrossAxisAlignment.stretch,
  children: [
  Text(
  "No : "+ogrenci[0],
  style:
  TextStyle(fontSize: 25.0, backgroundColor: Colors.blue),
  ),]

    );}


}

class Yazi extends Text {
  Yazi(String data) : super(data);
  @override
  // TODO: implement style
  TextStyle get style => TextStyle(color: Colors.deepOrange);
}
