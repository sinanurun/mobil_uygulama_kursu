import 'package:flutter/material.dart';
import 'package:sqflite/sqflite.dart';
import 'dart:async';
import 'package:path/path.dart';
import 'ogrenciModel.dart';

class DBHelper {
  static Future<Database> database() async {
    final dbPath = await getDatabasesPath();
    const ogrenciSQL = "CREATE TABLE Ogrenci ("
        "ogrenci_id INTEGER PRIMARY KEY,"
        "ogrenci_adi TEXT,"
        "blocked BIT"
        ")";

    return openDatabase(
      join(dbPath, "mobil_yoklama_uygulamasi.db"),
      onCreate: (db, version) async {
        await db.execute(ogrenciSQL);
      },
      version: 1,
    );
  }

  newOgrenci(Ogrenci newOgrenci) async {
    final db = await database();
    var sonuc = await db.insert("Ogrenci", newOgrenci.toMap());
    print(sonuc);
    return sonuc;
  }

  ogrenciEkle(Ogrenci yeniogrenci) async {
    final veritabani = await database();
    var sonuc = await veritabani.insert("Ogrenci", yeniogrenci.toMap());
    return sonuc;
  }

  Future<List<Ogrenci>> getAllOgrenciler() async {
    final db = await database();
    var sonuc = await db.query("Ogrenci");
    List<Ogrenci> list =
    sonuc.isNotEmpty ? sonuc.map((c) => Ogrenci.fromMap(c)).toList() : [];
    return list;
  }

  Future<List<Ogrenci>> ogrencileriListele() async {
    final veritabani = await database();
    var sonuclar = await veritabani.query("Ogrenci");
    List<Ogrenci> ogrencilistesi =
    sonuclar.isNotEmpty ? sonuclar.map((c) => Ogrenci.fromMap(c)).toList() : [];
    return ogrencilistesi;
  }

  Future<List<Ogrenci>> getBlockedOgrenci() async {
    final db = await database();
    var sonuc =
        await db.query("Ogrenci", where: "blocked = ? ", whereArgs: [1]);
    List<Ogrenci> list =
        sonuc.isNotEmpty ? sonuc.map((c) => Ogrenci.fromMap(c)).toList() : [];
    return list;
  }

  updateOgrenci(Ogrenci newOgrenci) async {
    final db = await database();
    var sonuc = await db.update("Ogrenci", newOgrenci.toMap(),
        where: "ogrenci_id = ?", whereArgs: [newOgrenci.ogrenci_id]);
    return sonuc;
  }

  blockOrUnblockOgrenci(Ogrenci ogrenci) async {
    final db = await database();
    Ogrenci blocked = Ogrenci(
        ogrenci_id: ogrenci.ogrenci_id,
        ogrenci_adi: ogrenci.ogrenci_adi,
        blocked: !ogrenci.blocked);
    var sonuc = await db.update("Ogrenci", blocked.toMap(),
        where: "ogrenci_id = ?", whereArgs: [ogrenci.ogrenci_id]);
    return sonuc;
  }

  deleteOgrenci(int ogrenci_id) async {
    final db = await database();
    db.delete("Ogrenci", where: "ogrenci_id = ?", whereArgs: [ogrenci_id]);
    db.delete("Oturum", where: "ogrenci_id = ?", whereArgs: [ogrenci_id]);
  }

  deleteAllOgrenci() async {
    final db = await database();
    db.rawDelete("Delete from Ogrenci");
    db.rawDelete("Delete from Oturum");
  }
}
