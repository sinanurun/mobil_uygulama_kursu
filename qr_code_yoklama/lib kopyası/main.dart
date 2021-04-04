import 'package:flutter/material.dart';
import 'package:qr_code_yoklama/homePage.dart';
import 'package:qr_code_yoklama/main2.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
    debugShowCheckedModeBanner: false,
  ));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Giris();
  }
}
