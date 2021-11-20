import 'dart:io';

void main() {
  List idades = [];
  List alturas = [];
  for (int i = 0; i < 5; i++) {
    print("Informe sua idade");
    var idade = stdin.readLineSync()!;
    print("Informe sua altura");
    var altura = stdin.readLineSync()!;

    idades.add(int.parse(idade));
    alturas.add(double.parse(altura));
  }

  print("\n================================================\n\n");
  for (int i = 4; i > 0; i--) {
    print("Idade = ${idades[i]}");
    print("Altura = ${alturas[i]} \n");
  }
}
