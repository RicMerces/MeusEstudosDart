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

      if (n1 >= n2 && n1 >= n3 && n1 >= n4 && n1 >= n5) {
        print("O MAIOR NUMERO É O $nA");
      } else if (n2 >= n1 && n2 >= n3 && n2 >= n4 && n2 >= n5) {
        print("O MAIOR NUMERO É O $nB");
      } else if (n3 >= n2 && n3 >= n1 && n3 >= n4 && n3 >= n5) {
        print("O MAIOR NUMERO É O $nC");
      } else if (n4 >= n2 && n4 >= n3 && n4 >= n1 && n4 >= n5) {
        print("O MAIOR NUMERO É O $nD");
      } else if (n5 >= n2 && n5 >= n3 && n5 >= n2 && n5 >= n1) {
        print("O MAIOR NUMERO É O $nE");
      }
    }
  }
}
