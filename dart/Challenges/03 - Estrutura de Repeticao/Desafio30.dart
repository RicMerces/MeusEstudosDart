import 'dart:io';

void main() {
  print("Informe o numero de pães que você deseja comprar ");
  var pao = stdin.readLineSync()!;
  int paes = int.parse(pao);
  while (paes > 50 || paes < 1) {
    print("Digite novamente \no valor deve ser entre 1 a 50");
    var pao = stdin.readLineSync()!;
    int paes = int.parse(pao);
  }
  double preco = 0;
  for (int i = 1; i <= paes; i++) {
    preco += 0.18;

    if (i == paes) {
      print("$i - $preco Reais");
    }
  }
}
