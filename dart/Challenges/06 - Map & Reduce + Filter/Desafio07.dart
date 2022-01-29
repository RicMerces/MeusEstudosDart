import 'dart:io';

void main() {
  informeValores();
}

String informeValores() {
  List valores = [];
  for (int i = 0; i < 5; i++) {
    print("Informe o ${i + 1}º valor");
    var valor = stdin.readLineSync()!;
    int v = int.parse(valor);

    valores.add(v);
  }

  int soma = realizarSoma(valores);
  int multiplicacao = realizarMultiplicacao(valores);

  String finalizado = 'Soma (+) = $soma\nMultiplicação (*) = $multiplicacao';
  print(finalizado);
  return finalizado;
}

int realizarSoma(List v) {
  int x = 0;
  int aux = 0;
  for (int i = 0; i < v.length; i++) {
    x = v[i] + aux;
    aux = x;
  }
  return x;
}

int realizarMultiplicacao(List v) {
  int x = 1;
  int aux = 1;
  for (int i = 0; i < v.length; i++) {
    x = v[i] * aux;
    aux = x;
  }

  return x;
}
