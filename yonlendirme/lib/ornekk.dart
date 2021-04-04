import 'package:flutter/material.dart';

void main(){
  runApp(Sayfa1());
}

class Sayfa1 extends StatefulWidget {
  @override
  _Sayfa1State createState() => _Sayfa1State();
}

class _Sayfa1State extends State<Sayfa1> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Scaffold(
      body: Center(
        child: TextButton(
          onPressed: () {
            Navigator.push(
              context,
              new MaterialPageRoute(
                builder: (context) => Sayfa2(sayi: 5),
              ),
            );
          },
          child: Text("Gönder"),
        ),
      ),
    ),);
  }
}

class Sayfa2 extends StatefulWidget {
  final int sayi;

  const Sayfa2({Key key, this.sayi}) : super(key: key);
  @override
  _Sayfa2State createState() => _Sayfa2State();
}

class _Sayfa2State extends State<Sayfa2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text("Gönderdiğin rakam ${widget.sayi}"),
    );
  }
}