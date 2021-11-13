import 'dart:io';

void main() {
  print("Informe um numero");
  var numero = stdin.readLineSync()!;
  int n = int.parse(numero);
  int resto = n % 2;

  print(resto);
  if (resto == 0) {
    print("Par");
  } else {
    print("Impar");
  }
}
