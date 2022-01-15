import 'dart:io';

void main() {
  for (int i = 0; i < 5; i++) {
    print("Informe o ${i + 1}º valor da lista");
    var valor = stdin.readLineSync()!;
    int v = int.parse(valor);

    adicionarNaLista(v);
  }
}

String adicionarNaLista(int v) {
  List lista = [];
  lista.add(v);

  String resultado = 'A Lista final = $lista';
  return resultado;
}
