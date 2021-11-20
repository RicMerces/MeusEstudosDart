import 'dart:io';

void main() {
  List lista = [];
  for (int i = 0; i < 10; i++) {
    print("Adicione um valor");
    var valor = stdin.readLineSync()!;
    int v = int.parse(valor);

    lista.add(v);
  }
  print("\n=============================================================\n");
  for (int i = 9; i >= 0; i--) {
    print(lista[i]);
  }
}
