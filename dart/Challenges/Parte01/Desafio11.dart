import 'dart:io';
/*o produto do dobro do primeiro com metade do segundo .
a soma do triplo do primeiro com o terceiro.
o terceiro elevado ao cubo.*/

void main() {
  print("Informe um valor inteiro");
  var primeiro = stdin.readLineSync()!;
  var segundo = stdin.readLineSync()!;
  double terceiro = (double.parse(primeiro) * 2) * (double.parse(segundo) / 2);

  print("a) ${terceiro}");
  print("b) ${(3 * double.parse(primeiro) + terceiro)}");
  print("c) ${terceiro * terceiro * terceiro}");
}
