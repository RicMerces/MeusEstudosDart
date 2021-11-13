import 'dart:io';

void main() {
  var peso = stdin.readLineSync()!;
  double pesoMin = double.parse(peso);
  if (pesoMin < 50) {
    print("Peso dentro do regulamento");
  } else {
    print("Multa = ${(pesoMin - 50) * 4}");
  }
}
