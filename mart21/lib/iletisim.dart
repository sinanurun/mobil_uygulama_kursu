import 'package:flutter/material.dart';

class Iletisim extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("İletişim"),
        ),
        body: Container(
          child: Column(
            children: [
              Text("İletişim Sayfasındasınız"),
              ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "/hakkimizda");
                  },
                  child: Text("Hakkımızda")),
              ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "/");
                  },
                  child: Text("Anasayfa"))
            ],
          ),
        ),
      ),
    );
  }

}