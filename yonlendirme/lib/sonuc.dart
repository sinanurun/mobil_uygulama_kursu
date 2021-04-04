import 'package:flutter/material.dart';

class Sonuc extends StatefulWidget {

  String kAdi;
  String kSifre;

  Sonuc({this.kAdi, this.kSifre});

  @override
  State<StatefulWidget> createState() => _SonucState();
}

class _SonucState extends State<Sonuc> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sonuç Sayfası"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Text("Merhaba"),
            Text("${widget.kAdi}"),
            Text("${widget.kSifre}"),
            Text("Hoşgeldin"),
            RaisedButton(
              child: Text("Bu Sayfayı Kapat"),
              onPressed: (){
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }

}