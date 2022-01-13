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

  String l1 = primeiraLinha(x, y, z);
  var xs = l1.split('  ');
  int x2 = int.parse(xs[1]);
  int x3 = int.parse(xs[2]);

  String l2 = segundaLinha(x, y, z, x2, x3);
  var ys = l1.split('  ');
  int y2 = int.parse(ys[1]);
  int y3 = int.parse(ys[2]);

  String l3 = terceiraLinha(x, y, z, y2, y3);

  String quadradoMagico = gerarQ(l1, l2, l3);

  return quadradoMagico;
}

String primeiraLinha(int x, int y, int z) {
  int total = ((x + y) + z);
  
  int e1 = x - y;
  int e2 = ;

  return '$x  $e1  $e2';
}

String segundaLinha(int x, int y, int z, int x2, int x3) {
  int total = ((x + x2) + x3);
  int e1 = y - total;
  int e2 = (e1 + y) - total;
  return '$e1  $y  $e2';
}

String terceiraLinha(int x, int y, int z, int y2, int y3) {
  int total = ((y + y2) + y3);
  int e1 = total - (x + y2);
  int e2 = e1 - z;

  return '$e1  $e2  $z';
}

String gerarQ(String l1, String l2, String l3) {
  String vf = '$l1\n$l2\n$l3';
  print(vf);
  return vf;
}
