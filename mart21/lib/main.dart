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

class GirisEkrani extends StatelessWidget {
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
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ProfilEkrani()));
                  },
                  child: Text("Giriş Butonu"))
            ],
          ),
        ));
  }
}

class ProfilEkrani extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profil Sayfası"),
      ),
      body: Container(
        child: Column(
          children: [Text("Profil Sayfası"),
          ElevatedButton(child: Text("Geri Git"),
          onPressed: (){
            Navigator.pop(context);
          },),
          ],
        ),
      ),
    );
  }
}
