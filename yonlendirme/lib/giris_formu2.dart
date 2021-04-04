import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: GirisEkrani(),
    );
  }
}

class GirisEkrani extends StatefulWidget {
  @override
  _GirisEkraniState createState() => _GirisEkraniState();
}

class _GirisEkraniState extends State<GirisEkrani> {
  TextEditingController t1 = TextEditingController();
  TextEditingController t2 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Text("Giriş Sayfası"),
            TextFormField(
              controller: t1,
            ),
            TextFormField(
              controller: t2,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ProfilEkrani(
                                kullaniciadi: t1.text,
                            sifre: t2.text,
                              )));
                },
                child: Text("Giriş Yap"))
          ],
        ),
      ),
    );
  }
}

class ProfilEkrani extends StatefulWidget {
  String kullaniciadi, sifre;

  ProfilEkrani({this.kullaniciadi, this.sifre});

  @override
  _ProfilEkraniState createState() => _ProfilEkraniState();
}

class _ProfilEkraniState extends State<ProfilEkrani> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Text("Profil Sayfası"),
            Text(widget.kullaniciadi),
            Text(widget.sifre),
            ElevatedButton(
              child: Text("Çıkış Yap"),
              onPressed: () {
                Navigator.pop(context);
              },
            )
          ],
        ),
      ),
    );
  }
}
