import 'dart:io';

void main() {
  print("Informe um valor");
  var x = stdin.readLineSync()!;
  double n = double.parse(x);

  validar(n);
}

String validar(double n) {
  var tipo = '';

  if (n > 0) {
    tipo = 'Positivo';
  } else if (n == 0) {
    tipo = 'Zero';
  } else {
    tipo = 'Negativo';
  }
  print(tipo);
  return tipo;
}
