import 'dart:io';

//Horas que você e quanto você ganha por hora

void main() {
  print("Informe seu salario");
  var salarioIncial = stdin.readLineSync();
  print("Seu salario é de Reais $salarioIncial");
  print("Informe quantos horas você trabalha por dia");
  var horasDiarias = stdin.readLineSync();
  print("Você trabalha $horasDiarias Horas por dia");
  double horasMensais = 22 * double.parse(horasDiarias!);
  print("e trabalha por mês em media ${horasMensais}");

  print("Você ganha Reais ${horasMensais * double.parse(salarioIncial!)}");
}
