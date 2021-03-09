void main() {
  //for (başlangıç, koşul, artış(azaltış))
  var kursiyerler = ["Ali", "Can", "Veli", 99];
  for (var kursiyer in kursiyerler) {
    print(kursiyer);
  }

  var sinif_listeleri = {
    "9A": ["ali", "veli"],
    "9B": {
      "elektronik": ["orhan", "veli"],
      "bilişim": ["Can", "Canan"]
    }
  };

  for (var sinifadi in sinif_listeleri.keys) {
    print(sinifadi);
    print(sinif_listeleri[sinifadi]);
  }
}
