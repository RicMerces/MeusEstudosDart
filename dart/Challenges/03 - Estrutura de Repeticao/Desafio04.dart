import 'dart:io';

void mainn() {
  double paisA = 80000;
  double paisB = 200000;
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
