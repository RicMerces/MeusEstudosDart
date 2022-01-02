import 'dart:io';

void main() {
  print("Informe três valores");

  var va1 = stdin.readLineSync()!;
  var va2 = stdin.readLineSync()!;
  var va3 = stdin.readLineSync()!;

  double v1 = double.parse(va1);
  double v2 = double.parse(va2);
  double v3 = double.parse(va3);

  operacao(v1, v2, v3);
}

double operacao(double x, double y, double z) {
  double r = ((x + y) + z);
  print(r);
  return r;
}
