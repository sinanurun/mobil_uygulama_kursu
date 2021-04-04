import 'package:flutter/material.dart';

import 'main04.dart';
import 'main05.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',

      initialRoute: "/",
      routes: {
        "/": (context) => MyHomePage(title: 'Flutter Demo Home Page'),
        "/hakkimizda": (context) => AboutUs(title: "Hakkımızda"),
        "/iletisim": (context) => Contact(title: "İletişim",),
      },

    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {

      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(

        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            ElevatedButton(child: Text("Hakkımızda"),
                onPressed:(){
              Navigator.pushNamed(context, "/hakkimizda");
                } ),
            ElevatedButton(child: Text("İletisim"),
                onPressed:(){
                  Navigator.pushNamed(context, "/iletisim");
                } ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
