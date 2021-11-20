import 'dart:io';

void main() {
  List notas = [];
  double soma = 0;
  double x = 0;
  for (int i = 1; i <= 4; i++) {
    var nota = stdin.readLineSync()!;
    double n = double.parse(nota);
    notas.add(n);
    soma = n + x;
    x = soma;
  }

  print("AS SUAS NOTAS FORAM = $notas");
  print("SUA MEDIA = ${soma / notas.length}");
}
