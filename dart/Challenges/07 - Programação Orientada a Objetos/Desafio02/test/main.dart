import 'dart:io';
import '../model/quadrado.dart';

main() {
  gerarQuadrado();
}

String gerarQuadrado() {
  print("Informe um valor ");
  var valor = stdin.readLineSync()!;
  Quadrado q = new Quadrado(int.parse(valor));
  print(q);

  print("Informe um novo valor");
  var novoValor = stdin.readLineSync()!;
  q.mudarValor(int.parse(novoValor));
  print(q);

  print(q.calcularArea());
  return '$q';
}
