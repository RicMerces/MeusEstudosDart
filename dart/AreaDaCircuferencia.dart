import 'dart:io';

main() {
  //Area da circuferencia = PI * (r * r)
  print("Informe um valor de raio para calcular area da circuferencia");
  var valorRaio = stdin.readLineSync();
  double raio = double.parse(valorRaio!);
  double area = 3.14 * (raio * raio);
  print(area);
}
