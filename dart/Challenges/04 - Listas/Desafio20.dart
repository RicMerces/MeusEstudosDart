import 'dart:io';

void main() {
  List arbono = [];
  double z = 0;
  double w = 0;
  for (int i = 0; i < 4; i++) {
    print("Informe seu salario");
    var salario = stdin.readLineSync()!;
    double money = double.parse(salario);

    arbono.add(money * 0.05);

    if (i == 3) {
      for (int x = 0; x < arbono.length; x++) {
        double y = arbono[x];
        z = y + w;
        w = z;
      }
    }
  }

  print("Arbono final pago = $w");
}
