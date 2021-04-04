import 'package:flutter/material.dart';


void main() {
  runApp(Myapp());
}
class Myapp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Icerik(),
    );
  }

}
class Icerik extends StatefulWidget{
  @override
  _IcerikState createState() => _IcerikState();
}

class _IcerikState extends State<Icerik> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Liste"),),
      body: ListView(
        scrollDirection: Axis.vertical,  // Kaydırılabilme yönünü belirler.
        padding: EdgeInsets.all(10.0),
        children: [ Text("merhaba"), Text("Merhabsad")],
      ) ,
    );
  }
}