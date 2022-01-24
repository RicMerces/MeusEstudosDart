import 'dart:io';

void main() {
  informarNumeros();
}

String informarNumeros() {
  List impares = [];
  List pares = [];

  for (int i = 0; i < 20; i++) {
    print("Informe o ${i + 1}º numero");
    var num = stdin.readLineSync()!;
    validar(int.parse(num), impares, pares);
  }
}

String validar(int num, List impares, List pares) {
  if (num % 2 == 0) {
    addPares(num, pares);
  } else if (num % 2 != 0) {
    addImpares(num, impares);
  } else {
    informarNumeros();
  }

  return informa
}

List addImpares(int n, List imp) {
  imp.add(n);
  return imp;
}

List addPares(int n, List par) {
  par.add(n);
  return par;
}
