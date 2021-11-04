import 'dart:io';

void main() {
  var nA, nB, nC, nD, nE;
  double n1, n2, n3, n4, n5;

  for (int i = 0; i == 5; i++) {
    switch (i) {
      case 0:
        print("Informe o ${i++}º numero ");
        nA = stdin.readLineSync();
        n1 = double.parse(nA);
        break;
      case 1:
        print("Informe o ${i++}º numero ");
        nB = stdin.readLineSync();
        n2 = double.parse(nA);
        break;
      case 2:
        print("Informe o ${i++}º numero ");
        nC = stdin.readLineSync();
        n3 = double.parse(nA);
        break;
      case 3:
        print("Informe o ${i++}º numero ");
        nD = stdin.readLineSync();
        n4 = double.parse(nA);
        break;
      case 4:
        print("Informe o ${i++}º numero ");
        nA = stdin.readLineSync();
        n1 = double.parse(nA);
        break;
    }
  }
}
