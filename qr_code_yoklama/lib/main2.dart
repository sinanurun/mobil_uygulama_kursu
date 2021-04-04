import 'package:flutter/material.dart';
import 'package:qr_code_yoklama/views/anasayfa.dart';
import 'package:qr_code_yoklama/views/ogrencieklemesayfasi.dart';
import 'package:qr_code_yoklama/views/ogrencilisteleme.dart';
import 'package:qr_code_yoklama/views/raporlamasayfasi.dart';
import 'package:qr_code_yoklama/views/sinaveklemesayfasi.dart';
import 'package:qr_code_yoklama/views/sinavlisteleme.dart';






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
         "/sinavlistesi":(context)=>Sinavlisteleme(),
        "/sinavekle":(context)=>Sinaveklemesayfasi(),
        "/raporlar":(context)=>RaporlamaSayfasi(),
      },
    );
  }

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return null;
  }
}
