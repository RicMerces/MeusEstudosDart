import 'dart:io';

void main() {
  print("Informe o valor de TRÊS produtos");
  var produto01 = stdin.readLineSync();
  var produto02 = stdin.readLineSync();
  var produto03 = stdin.readLineSync();

  double p1 = double.parse(produto01!);
  double p2 = double.parse(produto02!);
  double p3 = double.parse(produto03!);

  if (p1 <= p2 && p1 <= p3) {
    print(produto01);
  } else if (p2 <= p3 && p2 <= p1) {
    print(produto02);
  } else if (p3 <= p1 && p3 <= p2) {
    print(produto03);
  }
}
