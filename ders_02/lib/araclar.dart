String ders(){
  DateTime zaman = new DateTime.now();
  String gun = zaman.weekday.toString();
  switch (gun){
    case "1": {return "Ders Var";} break;
    case "2": {return "Ders Yok";} break;
    default:{return "Tatil";} break;
  };

  return gun;
}