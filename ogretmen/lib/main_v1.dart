import 'package:flutter/material.dart';

void main(){
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
                  ElevatedButton(onPressed: null, child: Text("Buton 1")),
                  ElevatedButton(onPressed: null, child: Text("Buton 2")),
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