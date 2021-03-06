import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:qr_code_yoklama/models/dbhelper.dart';
import 'package:qr_code_yoklama/models/sinavModel.dart';
import 'package:qr_code_yoklama/witgets/myDrawer.dart';

import 'package:sqflite/sqflite.dart';
import 'dart:async';
import 'package:path/path.dart';


class Sinavlisteleme extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _SinavlistelemeState();
}

class _SinavlistelemeState extends State {

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(title: Text("Sinav Listesi")),
      drawer: MyDrawer(),

      body: FutureBuilder<List<Sinav>>(

        future: DBHelper().getAllSinavlar(),
        builder: (BuildContext context, AsyncSnapshot<List<Sinav>> snapshot) {
          if (snapshot.hasData) {
            return ListView.builder(
              itemCount: snapshot.data.length,
              itemBuilder: (BuildContext context, int index) {
                Sinav item = snapshot.data[index];
                return Dismissible(
                  key: UniqueKey(),
                  background: Container(color: Colors.red),
                  onDismissed: (direction) {
                    DBHelper().deleteOgrenci(item.sinav_id);
                  },
                  child: ListTile(
                    title: Text(item.sinav_adi,
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    subtitle: RichText(
                      text: TextSpan(
                        text: item.sinav_aciklama, style: TextStyle(color: Colors.black),
                      ),
                    ),

                    leading: Text(item.sinav_id.toString()),
                    trailing: Checkbox(
                      onChanged: (bool value) {
                        DBHelper().blockOrUnblockSinav(item);
                        setState(() {});
                      },
                      value: item.blocked,
                    ),
                  ),
                );
              },
            );
            // veri yok ise ekran ortas??nda d??nen progressindicator g??ster
          } else {
            return Center(child: CircularProgressIndicator());
          }
        },
      ),

      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.settings_backup_restore),
        tooltip: "T??m S??navlar?? Sil",
        onPressed: () async {
          await DBHelper().deleteAllSinav();
          print("i??lem oldu");


          setState(() {});
        },
      ),
    );
  }
}

