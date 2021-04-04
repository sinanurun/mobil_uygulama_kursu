import 'package:flutter/material.dart';
import 'package:mart21/hakkimizda.dart';
import 'package:mart21/iletisim.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Rota İşlemleri",
      initialRoute: "/",
      routes: {
        "/": (context) => Anasayfa(),
        "/anasayfa": (context) => Anasayfa(),
        "/hakkimizda": (context) => Hakkimizda(),
        "/iletisim": (context) => Iletisim(),
      },
    );
  }

}
class Anasayfa extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Ana Sayfa"),
      ),
      body: Container(
        child: Column(
          children: [
            Text("Anasayfa"),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, "/hakkimizda");
                },
                child: Text("Hakkımızda")),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, "/iletisim");
                },
                child: Text("İletişim"))
          ],
        ),
      ),
    );
  }

}
