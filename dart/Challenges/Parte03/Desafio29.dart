import 'dart:io';

void main() {
  print("Informe a quantidade de caixas que você deseja");
  var caixas = stdin.readLineSync()!;
  int box = int.parse(caixas);
  while (box < 10) {
    print("Informe novamente so vendemos acima de 10 caixas");
    var caixas = stdin.readLineSync()!;
    int box = int.parse(caixas);
  }
  double preco = 0;

  for (int i = 1; i <= box / 10; i++) {
    preco += 1.99;
  }
  print("${box / 10} - $preco Reais");
}
