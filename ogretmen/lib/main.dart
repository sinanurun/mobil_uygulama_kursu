import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Iskelet(),
    );
  }
}

class Iskelet extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _IskeletState();
}

class _IskeletState extends State<Iskelet> {
  @override
  Widget build(BuildContext context) {
    TextEditingController text1 = TextEditingController();
    TextEditingController text2 = TextEditingController();

    String ogretmen_adi = "Ad";
    String ogretmen_soyadi = "Soyad";

    ogretmen_ekle() {
      FirebaseFirestore.instance
          .collection("ogretmenler")
          .doc(text1.text)
          .set({'adi': text1.text, 'soyadi': text2.text}).whenComplete(
              () => print("Eklendi"));
      setState(() {
        ogretmen_adi = text1.text;
      });
    }

    ogretmen_guncelle() {
      FirebaseFirestore.instance
          .collection("ogretmenler")
          .doc(text1.text)
          .update({'adi': text1.text, 'soyadi': text2.text}).whenComplete(
              () => print("Güncellendi"));
    }

    ogretmen_silme() {
      FirebaseFirestore.instance
          .collection("ogretmenler")
          .doc(text1.text)
          .delete()
          .whenComplete(() => print("Silindi"));
    }

    ogretmen_getir() {
     FirebaseFirestore.instance
          .collection("ogretmenler")
          .doc(text1.text)
          .get()
          .then((gelenveri) {
        setState(() {
          print(gelenveri.data());
          String ad = gelenveri.data()['adi'];
          ogretmen_adi = ad;

          ogretmen_soyadi = gelenveri.data()['soyadi'];
          print(gelenveri);
        });
      });
    }

    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Öğretmen Kayıt Uygulaması"),
      ),
      body: Container(
        margin: EdgeInsets.all(20.0),
        child: Center(
          child: Column(
            children: [
              TextField(
                controller: text1,
              ),
              TextField(
                controller: text2,
              ),
              Row(
                children: [
                  ElevatedButton(onPressed: ogretmen_ekle, child: Text("Ekle")),
                  ElevatedButton(
                      onPressed: ogretmen_guncelle, child: Text("Güncelle")),
                  ElevatedButton(
                      onPressed: ogretmen_silme, child: Text("Silme")),
                  ElevatedButton(
                      onPressed: ogretmen_getir, child: Text("Getir")),
                ],
              ),
              ListTile(
                title: Text(ogretmen_adi),
                subtitle: Text(ogretmen_soyadi),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
