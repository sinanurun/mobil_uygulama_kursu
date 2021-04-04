import 'package:flutter/material.dart';

class Hakkimizda extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hakkımızda"),
      ),
      body: Container(
        child: Column(
          children: [
            Text("Hakkımızda Sayfasındasınız"),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, "/");
                },
                child: Text("Anasayfa")),
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