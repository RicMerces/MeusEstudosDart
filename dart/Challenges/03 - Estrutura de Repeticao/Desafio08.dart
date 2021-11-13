import 'dart:io';

void main() {
  var nA, nB, nC, nD, nE;
  var n1, n2, n3, n4, n5;

  for (int i = 0; i <= 5; i++) {
    if (i == 0) {
      print("Informe o ${i + 1}º numero ");
      nA = stdin.readLineSync();
      n1 = double.parse(nA);
    } else if (i == 1) {
      print("Informe o ${i + 1}º numero ");
      nB = stdin.readLineSync();
      n2 = double.parse(nB);
    } else if (i == 2) {
      print("Informe o ${i + 1}º numero ");
      nC = stdin.readLineSync();
      n3 = double.parse(nC);
    } else if (i == 3) {
      print("Informe o ${i + 1}º numero ");
      nD = stdin.readLineSync();
      n4 = double.parse(nD);
    } else if (i == 4) {
      print("Informe o ${i + 1}º numero ");
      nE = stdin.readLineSync();
      n5 = double.parse(nE);
    }
  }
  print("O resultado = ${(n1 + n2) + (n3) + (n4 + n5)}");
}
