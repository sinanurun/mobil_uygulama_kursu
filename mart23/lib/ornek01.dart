import 'package:flutter/material.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Icerik(),
    );
  }
}

class Icerik extends StatefulWidget {
  @override
  _IcerikState createState() => _IcerikState();
}

class _IcerikState extends State<Icerik> {
  List ornekListem = [
    "Liste İçerik 1",
    "Liste İçerik 2",
    "Liste İçerik 3",
    "Liste İçerik 4",
    "Liste İçerik 5"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Liste"),
      ),
      body: ListView.builder(
          scrollDirection: Axis.vertical, // Kaydırma yönü
          padding: EdgeInsets.all(8.0), // içeriden her taraftan 8 birimlik boşluk bırak
          itemCount: ornekListem.length, //listenin uzunluğu
          itemBuilder: (BuildContext context, sira) {
            return Text(ornekListem[sira]);
          } // sacffolddan gelen context i ve listenin sıranosu nu parametre olarak verdik.Artık listemizin uzunlu kadar bu fonksiyonu tekrar tekrar ekrana abasarak listemizi oluşturmuş olacak

          ),
    );
  }
}
