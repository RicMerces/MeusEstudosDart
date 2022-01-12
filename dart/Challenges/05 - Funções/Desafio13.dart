import 'dart:io';

void main() {
  imprimir();
}

String imprimir() {
  List pD = [];

  for (int i = 1; i <= 3; i++) {
    print("Informe o $iº valor da diagonal");
    var v1 = stdin.readLineSync()!;
    pD.add(v1);
  }
  String f = '${pD[0]}    \n   ${pD[1]}  \n      ${pD[2]}';
  print("$f");

  gerarLinhas(pD[0], pD[1], pD[2]);
  return f;
}

String gerarLinhas(String x1, String y1, String z1) {
  int x = int.parse(x1);
  int y = int.parse(y1);
  int z = int.parse(z1);

  primeiraLinha(x, y, z);
}

String primeiraLinha(int x, int y, int z) {
  int e1 = x - y;
  int e2 = e1 - (x + y + z);

  return '$x  $e1  $e2';
}

String segundaLinha(int x, int y, int z) {
  int e1 = x - y;
  int e2 = e1 - (x + y + z);

  return '$x  $e1  $e2';
}

String terceiraLinha(int x, int y, int z) {
  int e1 = x - y;
  int e2 = e1 - (x + y + z);

  return '$x  $e1  $e2';
}
