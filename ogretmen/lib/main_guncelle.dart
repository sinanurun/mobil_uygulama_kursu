import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Iskelet(),
    );
  }

}

class Iskelet extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => _IskeletState();

}

class _IskeletState extends State<Iskelet>{
  @override
  Widget build(BuildContext context) {
    TextEditingController text1 = TextEditingController();
    TextEditingController text2 = TextEditingController();


    ogretmen_ekle(){
      FirebaseFirestore.instance
          .collection("ogretmenler")
          .doc(text1.text)
          .set({'adi':text1.text,'soyadi':text2.text}).whenComplete(() => print("Eklendi"));
    }


    ogretmen_guncelle(){
      FirebaseFirestore.instance
          .collection("ogretmenler")
          .doc(text1.text)
          .update({'adi':text1.text,'soyadi':text2.text}).whenComplete(() => print("Güncellendi"));
    }



    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text("Öğretmen Kayıt Uygulaması"),),
      body: Container(
        margin: EdgeInsets.all(20.0),
        child: Center(

          child: Column(
            children: [
              TextField(controller: text1,),
              TextField(controller: text2,),
              Row(
                children: [
                  ElevatedButton(onPressed: ogretmen_ekle, child: Text("Ekle")),
                  ElevatedButton(onPressed: ogretmen_guncelle, child: Text("Güncelle")),
                  ElevatedButton(onPressed: null, child: Text("Buton 3")),
                  ElevatedButton(onPressed: null, child: Text("Buton 4")),
                ],
              ),
            ],

          ),
        ),
      ),
    );
  }

}