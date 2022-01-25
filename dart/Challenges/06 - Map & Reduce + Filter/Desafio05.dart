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
  List impars = [];

  if (num % 2 == 0) {
    par = addPares(num, pares);
    print(par);
  } else if (num % 2 != 0) {
    impars = addImpares(num, impares);
    print(impars);
  }
  print(par);
  print(impars);
  return 'Pares = $par \nImpares = $impars';
}

List addImpares(int n, List imp) {
  imp.add(n);
  return imp;
}

List addPares(int n, List par) {
  par.add(n);
  return par;
}
