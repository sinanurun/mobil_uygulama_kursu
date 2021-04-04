import 'package:flutter/material.dart';
import 'anasayfa.dart';
import 'ogrenciekle.dart';
import 'ogrencilisteleme.dart';







void main() => runApp(Giris());

class Giris extends StatelessWidget {


  final appTitle = 'Öğrenci Yoklama Uygulaması';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
      routes: {"/": (context) => Anasayfa(),
        "/ogrencilistesi":(context)=>Ogrencilisteleme(),
        "/ogrenciekle":(context)=>Ogrencieklemesayfasi(),

      },
    );
  }

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return null;
  }
}