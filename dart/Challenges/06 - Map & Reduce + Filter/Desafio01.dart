import 'dart:io';

void main() {
  List lista = [];
  print("INICIAR");
  for (int i = 0; i < 5; i++) {
    print("Informe o ${i + 1}º valor da lista");
    var valor = stdin.readLineSync()!;
    int v = int.parse(valor);

    adicionarNaLista(v, lista);
  }
}

String adicionarNaLista(int v, List lista) {
  lista.add(v);

  String resultado = 'A Lista final = $lista';
  if (lista.length == 5) {
    print(resultado);
  }
  return resultado;
}
