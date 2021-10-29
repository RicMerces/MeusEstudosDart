import 'dart:io';

void main() {
  print("Informe o valor de sua nota");
  var nota = stdin.readLineSync();
  double n = double.parse(nota!);

  if (n >= 9 && n <= 10) {
    print("A");
  } else if (n < 9 && n >= 7.5) {
    print("B");
  } else if (n < 7.5 && n >= 6) {
    print("C");
  } else if (n < 6 && n >= 4) {
    print("D");
  } else if (n < 4 && n >= 0) {
    print("E");
  } else {
    print("F");
  }
}
