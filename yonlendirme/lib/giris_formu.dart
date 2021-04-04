import 'package:flutter/material.dart';

void main(){
 runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: GirisEkrani(),
    );
  }
}

class GirisEkrani extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     body: Container(
       child: Column(
         children: [
           Text("Giriş Sayfası"),
           ElevatedButton(onPressed: (){
             Navigator.push(context, MaterialPageRoute(builder: (context) => ProfilEkrani()));
           }, child: Text("Giriş Yap"))
         ],
       ),
     ),
   );
  }

}

class ProfilEkrani extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Text("Profil Sayfası"),
            ElevatedButton(child: Text("Çıkış Yap"),
            onPressed: (){
              Navigator.pop(context);
            },)
          ],
        ),
      ),
    );
  }


}