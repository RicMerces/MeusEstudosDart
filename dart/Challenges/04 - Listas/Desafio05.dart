import 'dart:io';

void main() {
  String texto = stdin.readLineSync()!;
  List lista = texto.split('');

  List con = [];
  for (int i = 1; i < texto.length; i++) {
    if (lista[i] == 'a' ||
        lista[i] == 'e' ||
        lista[i] == 'i' ||
        lista[i] == 'o' ||
        lista[i] == 'u') {
    } else {
      con.add(lista[i]);
    }
  }
  print("${con.length} é o tamanho \n$con");
}
