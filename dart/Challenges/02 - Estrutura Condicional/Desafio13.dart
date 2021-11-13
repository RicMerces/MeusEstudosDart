import 'dart:io';

void main() {
  print("Informe um numero inteiro");
  var numero = stdin.readLineSync()!;
  int n = int.parse(numero);

  switch (n) {
    case 1:
      print("Domingo");
      break;
    case 2:
      print("Segunda");
      break;
    case 3:
      print("Terça");
      break;
    case 4:
      print("Quarta");
      break;
    case 5:
      print("Quinta");
      break;
    case 6:
      print("Sexta");
      break;
    case 7:
      print("Sabado");
      break;
  }
}
