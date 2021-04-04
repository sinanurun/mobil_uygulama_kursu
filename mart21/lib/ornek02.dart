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
  TextEditingController kadi = TextEditingController();
  TextEditingController sifre = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Giriş Ekranı"),
        ),
        body: Container(
          child: Column(
            children: [
              Text("Giriş Bölümü Formu"),
              TextFormField(
                controller: kadi,
              ),
              TextFormField(
                controller: sifre,
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ProfilEkrani(
                                  gelenad: kadi.text,
                                  gelensifre: sifre.text,
                                )));
                  },
                  child: Text("Giriş Butonu"))
            ],
          ),
        ));
  }
}

class ProfilEkrani extends StatefulWidget {
  String gelenad, gelensifre;

  // constructer  oluşturduk
  ProfilEkrani({this.gelenad, this.gelensifre});

  @override
  _ProfilEkraniState createState() => _ProfilEkraniState();
}

class _ProfilEkraniState extends State<ProfilEkrani> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profil Sayfası"),
      ),
      body: Container(
        child: Column(
          children: [
            Text("Profil Sayfası"),
            Text("Kullanıcı Adı : "+widget.gelenad),
            Text("Kullanıcı Şifre : "+widget.gelensifre),
            ElevatedButton(
              child: Text("Geri Git"),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
