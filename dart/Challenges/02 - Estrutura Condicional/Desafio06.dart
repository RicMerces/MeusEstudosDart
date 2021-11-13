import 'dart:io';

void main() {
  print("Informe três numeros");
  var numero01 = stdin.readLineSync()!;
  var numero02 = stdin.readLineSync()!;
  var numero03 = stdin.readLineSync()!;

  double n1 = double.parse(numero01);
  double n2 = double.parse(numero02);
  double n3 = double.parse(numero03);

  if (n1 >= n2 && n1 >= n3) {
    print("O maior numero é $numero01");
  } else if (n2 >= n3 && n2 >= n1) {
    print("O maior numero é $numero02");
  } else if (n3 >= n2 && n3 >= n1) {
    print("O maior numero é $numero03");
  }
}
