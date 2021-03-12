import 'dart:io';

void main() {
  print("Birinci sayıyı gir :");
  int s1 = int.parse(stdin.readLineSync());
  print("ikinci sayıyı gir :");
  int s2 = int.parse(stdin.readLineSync());
  print("Girilen iki sayı Toplamı " + topla(s1, s2).toString());
  print("Girilen iki sayı Farkı " + cikar(s1, s2).toString());
}
int topla(int s1, int s2) {
  int toplam = s1 + s2;
  return toplam;
}
int cikar(int s1, int s2) {
  int fark = s1 - s2;
  return fark;
}
