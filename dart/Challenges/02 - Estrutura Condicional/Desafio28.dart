import 'dart:io';

void main() {
  print("Informe o tipo de carne que você deseja");
  String carne = stdin.readLineSync()!;
  print("Informe o quilo");
  var quilo = stdin.readLineSync()!;
  double kg = double.parse(quilo);

  if (carne.toUpperCase() == 'File Duplo'.toUpperCase()) {
    double valor;
    if (kg >= 5) {
      valor = 4.90 * kg;
      print("Reais = $valor");
    } else {
      valor = 5.80 * kg;
    }
  } else if (carne.toUpperCase() == 'Alcatra'.toUpperCase()) {
    double valor;
    if (kg >= 5) {
      valor = 5.90 * kg;
      print("Reais = $valor");
    } else {
      valor = 6.80 * kg;
    }
  } else if (carne.toUpperCase() == 'Picanha'.toUpperCase()) {
    double valor;
    if (kg >= 5) {
      valor = 6.90 * kg;
      print("Reais = $valor");
    } else {
      valor = 7.80 * kg;
    }
  } else {
    print("NÃO TEMOS ESSA CARNE NO MOMENTO");
  }
}
