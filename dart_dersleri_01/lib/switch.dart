void main() {
  String ay = "Ocak"; // == ile kontrol eder

  switch (ay) {
    case "Ocak":{print("birinci ay");}      break;
    case "Şubat":
      {
        print("İkinci ay");
      }
      break;
    default:
      {
        print("Hatalı Ay");
      }
      break;
  }
}
