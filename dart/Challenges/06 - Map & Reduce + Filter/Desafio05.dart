import 'dart:io';

void main() {
  informarNumeros();
}

String informarNumeros() {
  List impares = [];
  List pares = [];
  String valicao = '';
  for (int i = 0; i < 4; i++) {
    print("Informe o ${i + 1}º numero");
    var num = stdin.readLineSync()!;
    valicao = validar(int.parse(num), impares, pares);
  }
  print(valicao);
  return valicao;
}

String validar(int num, List impares, List pares) {
  List par = [];
  List impar = [];

  if (num % 2 == 0) {
    par = addPares(num, pares);
  } else if (num % 2 != 0) {
    impar = addImpares(num, impares);
  } else {
    informarNumeros();
  }

  return 'Pares = $par \nImpares = $impar';
}

List addImpares(int n, List imp) {
  imp.add(n);
  return imp;
}

List addPares(int n, List par) {
  par.add(n);
  return par;
}
