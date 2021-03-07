void main() {
  // map veri tipi key ve values değerleri üzerine tanımlanır
  var sozluk = {"car": "araba"};
  var user = {"kadi": "Fatih", "sifre": "12345"};
  var ogrenci_list = ["Ali", "CAN", 15, "9-B", "Bilişim"];
  var ogrenci_map = {"Ad": "Ali", "Soyad": "Veli", "Yas": 15};
  var sinif_listeleri = {
    "9A": ["ali", "veli"],
    "9B": {
      "elektronik": ["orhan", "veli"],
      "bilişim": ["Can", "Canan"]
    }
  };

  //aşağıdaki gibi farklı tanımlamalarda yapılabilir
  var sayilar = new Map();
  sayilar = {
    1: ["Bir", "one"],
    "2": "iki"
  };
  print(sayilar[1][0]);

  var dil = {
    "home": ["home", "anasayfa"],
    "contact": ["contact", "iletişim"]
  };

  print(dil.values);

  var yemekler = new Map();
  yemekler = {
    "çorbalar": {
      "etli": ["işkembe", "kelle paça", "tavuk suyu"],
      "etsiz": ["mercimek", "ezo gelin"],
      "sebze": ["domates", "brokoli"]
    },
    "Kebaplar": {
      "acılı": ["adana", "beyti"],
      "acısız": ["urfa", "mardin"],
      "dürümler": ["ciger", "adana"]
    }
  };

  yemekler["tatlilar"] = {
    "şerbetli": ["baklava", "Künefe"],
    "sütlü": ["muhallebi", "sütlaç"]
  };
  print(yemekler["tatlilar"]["şerbetli"][0]);
  yemekler["tatlilar"]["şerbetli"].add("Kalburabastı");

  print(yemekler["tatlilar"]["şerbetli"]);
}
