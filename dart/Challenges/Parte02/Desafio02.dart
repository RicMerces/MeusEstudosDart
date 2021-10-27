import 'dart:io';

void main() {
  print("Informe um valor");
  var valor01 = stdin.readLineSync()!;

  double v1 = double.parse(valor01);

  if (v1 > 0) {
    print("Valor positivo");
  } else if (v1 == 0) {
    print("Nem negativo nem positivo o valor é 0");
  } else {
    print("Valor negativo");
  }
}
