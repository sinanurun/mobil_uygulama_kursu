import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dbhelper.dart';
import 'myDrawer.dart';
import 'ogrenciModel.dart';



class Anasayfa extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Öğrencileriniz Listelenmektedir")),
        drawer: MyDrawer(),

        body: new Builder(
            builder: (BuildContext context) {
              return Column(

                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Expanded(
                    flex: 10,
                    child: FutureBuilder<List<Ogrenci>>(


                      future: DBHelper().getAllOgrenciler(),
                      builder: (BuildContext context,
                          AsyncSnapshot<List<Ogrenci>> snapshot) {
                        if (snapshot.hasData) {
                          return ListView.builder(
                            itemCount: snapshot.data.length,
                            itemBuilder: (BuildContext context, int index) {
                              Ogrenci item = snapshot.data[index];
                              return Dismissible(
                                key: UniqueKey(),
                                background: Container(color: Colors.red),
                                // onDismissed: (direction) {
                                //   Navigator.of(context)
                                //       .push(MaterialPageRoute(
                                //       builder: (context) => ScanPage(item)));
                                // },
                                child: Container(
                                  decoration: BoxDecoration(
                                      color: Colors.amberAccent,
                                      border: Border.all()),
                                  margin: const EdgeInsets.all(5.0),
                                  padding: const EdgeInsets.all(5.0),
                                  child: ListTile(

                                    title: Text("Öğrenci Adı : " + item.ogrenci_adi,
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold)),
                                    leading: Text(
                                      "Açıklama id : " + item.ogrenci_id.toString(),
                                      textAlign: TextAlign.center,

                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(color: Colors.redAccent,
                                          fontSize: 25,
                                          fontWeight: FontWeight.bold),),

                                  ),),
                              );
                            },
                          );
                        } else {
                          return Center(child:
                          Text("Öğrenci Bulunmamaktadır"),);
                        }
                      },
                    ),
                  ),


                ],
              );
            }
        )
    );
  }
}