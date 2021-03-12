import 'dart:io';

void main()
{
  print("Enter your name?");
  // Reading name of the Geek
  String name = stdin.readLineSync();
  print("$name yaş kaç");
  int yas = int.parse(stdin.readLineSync());
  print(yas);

  // Printing the name
  print("Hello, $name! \nWelcome to $yas GeeksforGeeks!!"+ yas.toString());
}