import 'package:flutter/material.dart';

void main() {
  runApp(Uygulamam());
}

class Uygulamam extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mobil Uygulama Kursu',
      home: Icerik(),
    );
  }
}

class Icerik extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      appBar: AppBar(
        title: Text(
          "Öğrenci Listesi",
          style: TextStyle(color: Colors.deepOrange),
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(50.0),
        color: Colors.lightBlueAccent,
        child: Column(
          children: [
            Image.asset("images/indir.jpeg"),
            Satir("1", "Serap ARTAR", "Web"),
            SizedBox(height: 20.0),
            Satir("2", "Filiz KOÇAK", "Ağ"),
            SizedBox(height: 20.0),
            Satir("3", "Emine", "Ağ"),
            SizedBox(height: 20.0),
            Satir("4", "Hüseyin", "Programlama"),
          ],
        ),
      ),
    );
  }

  Widget Satir(String numara, String isim, String bolum) {
    return Row(
      children: [
        Yazi(numara),
        SizedBox(
          width: 10.0,
        ),
        Yazi(isim),
        SizedBox(
          width: 10.0,
        ),
        Yazi(bolum)
      ],
    );
  }
}

class Yazi extends Text {
  Yazi(String data) : super(data);
  @override
  // TODO: implement style
  TextStyle get style => TextStyle(color: Colors.deepOrange);
}
