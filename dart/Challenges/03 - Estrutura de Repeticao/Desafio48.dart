import 'dart:io';

void main() {
  print("Informe o um numero");
  String numero = stdin.readLineSync()!;
  String resultado = "";
  for (int i = numero.length; i > 0; i++) {
    resultado += numero[i - 1];
  }
  print(numero);
}
