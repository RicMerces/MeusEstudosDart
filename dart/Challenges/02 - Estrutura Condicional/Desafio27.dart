import 'dart:io';

void main() {
  print("Informe qual fruta você deseja ");
  String fruta = stdin.readLineSync()!;
  print("Informe qual o quilo de $fruta que você deseja");
  var quilo = stdin.readLineSync()!;
  double kg = double.parse(quilo);

  if (fruta.toUpperCase() == 'MORANGO') {
    if (kg >= 5) {
      double valor = kg * 2.20;
      print("O Valor = $valor");
    } else {
      double valor = kg * 2.50;
      print("O Valor = $valor");
    }
  } else if (fruta.toUpperCase() == 'MACA') {
    if (kg >= 5) {
      double valor = kg * 1.80;
      print("O Valor = $valor");
    } else {
      double valor = kg * 1.50;
      print("O Valor = $valor");
    }
  } else {
    print("NÃO TEMOS ESSE FRUTO AQUI");
  }
}
