import 'dart:io';

void main() {
  print("Informe um valor de area para ser printada ");
  var valorArea = stdin.readLineSync()!;
  double litro = double.parse(valorArea) / 3;

  double lata = litro / 18;

  if (lata % 2 != 0) {
    double latinha = lata / 3.6;

    print(
        "O valor final foi aproximadamente $latinha latinhas e $lata ${(latinha * 25) + (lata * 80)}");
  } else {
    print("O valor final foi de ${(lata * 80)}");
  }
}
