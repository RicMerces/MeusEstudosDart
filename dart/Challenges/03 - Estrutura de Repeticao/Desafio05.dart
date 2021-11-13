import 'dart:io';

void mainn() {
  print("Informe a população do pais A");
  var pA = stdin.readLineSync()!;
  double paisA = double.parse(pA);

  print("Informe a população do pais B");
  var pB = stdin.readLineSync()!;
  double paisB = double.parse(pB);
  int ano = 0;

  double aumentoA = 0;
  double aumentoB = 0;

  while (paisA < paisB) {
    aumentoA = paisA + (0.03 * paisA);
    aumentoB = paisB + (0.015 * paisB);

    paisA = aumentoA;
    paisB = aumentoB;

    ano++;
  }

  print(
      "O tempo estimado para que a população da pais A ultrapasse a pais B é de $ano anos");
}
