import 'dart:io';

void main() {
  //ARRAY
  var lista = [];
  for (int i = 0; i < 5; i++) {
    print("Informe um valor para uma lista");
    var valor = stdin.readLineSync()!;
    int v = int.parse(valor);

    lista.add(v);
  }
  print(lista);
}
