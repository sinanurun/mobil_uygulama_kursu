import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Iskelet(),
    );
  }
}

class Iskelet extends StatefulWidget {

  @override
  _IskeletState createState() => _IskeletState();
}

class _IskeletState extends State<Iskelet> {

  TextEditingController text1 = TextEditingController();
  TextEditingController text2 = TextEditingController();

  var ogrenciAdi = "Adı";
  var ogrenciSoyadi = "Soyadı";

  @override
  Widget build(BuildContext context) {

    ogrenciEkle() {
      var tamad = text1.text;
      FirebaseFirestore.instance
          .collection("ogrenciler")
          .doc(tamad)
          .set({'adi': text1.text, 'soyadi': text2.text}).whenComplete(
              () => print("Öğrenci eklendi"));
    }

    ogrenciGuncelle() {
      var tamad = text1.text;
      FirebaseFirestore.instance
          .collection("ogrenciler")
          .doc(tamad)
          .update({'adi': text1.text, 'soyadi': text2.text}).whenComplete(
              () => print("Öğrenci Güncellendi"));
    }

    ogrenciSil() {
      var tamad = text1.text;
      FirebaseFirestore.instance
          .collection("ogrenciler")
          .doc(tamad)
          .delete()
          .whenComplete(() => print("Öğrenci Silindi"));
    }

    ogrenciGetir() {
      var tamad = text1.text;
      FirebaseFirestore.instance
          .collection("ogrenciler")
          .doc(tamad)
          .get()
          .then((gelen) {

       setState(() {
         ogrenciAdi = gelen.data()['adi'];
         ogrenciSoyadi = gelen.data()['soyadi'];
       });

      });
    }

    return Scaffold(
      appBar: AppBar(
        title: Text("Öğrenci Listesi"),
      ),
      body: Container(
        margin: EdgeInsets.all(25.0),
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
                  ElevatedButton(
                    onPressed: () {
                      ogrenciEkle();

                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                              title: Text("Öğrenci Eklendi"),
                              content: Text("İşlem Başarılı"),
                              actions: <Widget>[
                                ElevatedButton(
                                    onPressed: () {
                                      Navigator.of(context).pop();
                                    },
                                    child: Text("Kapat"))
                              ]);
                        },
                      );
                    },
                    child: Text("Ekle"),
                  ),
                  ElevatedButton(
                    onPressed: ogrenciGuncelle,
                    child: Text("Güncelle"),
                  ),
                  ElevatedButton(
                    onPressed: ogrenciSil,
                    child: Text("Sil"),
                  ),
                  ElevatedButton(
                    onPressed: ogrenciGetir,
                    child: Text("Getir"),
                  ),
                  ],
              ),
              ListTile(
                title: Text(ogrenciAdi),
                subtitle: Text(ogrenciSoyadi),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
