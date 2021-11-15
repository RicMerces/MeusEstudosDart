import 'dart:io';

void main() {
  double sInicial = 1000;
  int anoInicial = 1995;
  double sFinal = 0;
  for (int i = 1; i <= 2021; i++) {
    sFinal = sInicial * (0.015 * i);
  }
  print("O salario atual dele em 2021 = $sFinal");
}
