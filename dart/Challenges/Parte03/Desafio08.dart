import 'dart:io';

void main() {
  var nA, nB, nC, nD, nE;
  double n1, n2, n3, n4, n5;

  for (int i = 0; i <= 5; i++) {
    if (i == 0) {
      print("Informe o ${i + 1}º numero ");
      nA = stdin.readLineSync();
      n1 = double.parse(nA);
    } else if (i == 1) {
      print("Informe o ${i + 1}º numero ");
      nB = stdin.readLineSync();
      n2 = double.parse(nA);
    } else if (i == 2) {
      print("Informe o ${i + 1}º numero ");
      nC = stdin.readLineSync();
      n3 = double.parse(nA);
    } else if (i == 3) {
      print("Informe o ${i + 1}º numero ");
      nD = stdin.readLineSync();
      n4 = double.parse(nA);
    } else if (i == 4) {
      print("Informe o ${i + 1}º numero ");
      nA = stdin.readLineSync();
      n1 = double.parse(nA);
    }
  }
}
