import 'dart:io';

void main() {
  informarValores();
}

String informarValores() {
  List listaDeNumeros = [];
  for (int i = 0; i < 5; i++) {
    print("Informe um numero");
    var numero = stdin.readLineSync()!;
    int n = int.parse(numero);

    listaDeNumeros.add(n);
  }

  double soma = somarValores(listaDeNumeros);

  print(soma);
  return '$soma';
}

double somarValores(List l) {
  double x = 0;
  double aux = 0;

  for (int i = 0; i < l.length; i++) {
    x = (l[i] * l[i]) + aux;
    aux = x;
  }

  return x;
}
