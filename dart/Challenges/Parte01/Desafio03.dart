import 'dart:io';

// O Usuario deve informar dois valores e eu devo imprimir a soma dos numeros
void main() {
  print("Informe dois numeros");
  var n1 = stdin.readLineSync();
  var n2 = stdin.readLineSync();

  int soma = int.parse(n1!) + int.parse(n2!);
  print(soma);
}
