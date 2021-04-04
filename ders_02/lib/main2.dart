import 'dart:ui';

import 'package:flutter/material.dart';
import 'araclar.dart';
import 'package:ders_02/main.dart';



class Uygulamam2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowMaterialGrid: false,
      title: "Ders 02 Uygulamasi",
      home: Icerik2(),
    );
  }
}

class Icerik2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Yeni Sayfa",
          style: TextStyle(
            color: Colors.deepOrange,
          ),
        ),
      ),
      body: Container(
        color: Colors.amber,
        alignment: Alignment.topRight,
        margin: EdgeInsets.all(25.0),
        child: Padding(
          padding: const EdgeInsets.all(50.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                "1",
                style: TextStyle(fontSize: 25.0, backgroundColor: Colors.blue),
              ),
              Yazi("Merhaba"+ ders()),
              Image.asset("assets/images/ogrenci.jpeg"),
              // ignore: deprecated_member_use
              RaisedButton(
              child: Icon(Icons.arrow_back_outlined,
              semanticLabel: "Geri",),onPressed:(){
                Navigator.push(context, MaterialPageRoute(builder:(context) => Uygulamam()));
              }) ,
            ],
          ),
        ),
      ),
    );
  }
}

class Yazi extends Text {
  Yazi(String data) : super(data);
  @override
  // TODO: implement style
  TextStyle get style => TextStyle(color: Colors.deepOrange);
}

Widget buton(){
  
}
