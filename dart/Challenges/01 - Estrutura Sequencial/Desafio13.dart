import 'dart:io';

void main() {
  print("Informe sua altura");
  var altura = stdin.readLineSync();

  double pesoIdeal = 0;

  print("Voce é Homem ou Mulher ");
  var genero = stdin.readLineSync();

  if (genero == 'H') {
    pesoIdeal = (72.7 * (double.parse(altura!))) - 58;
    print(pesoIdeal);
  } else if (genero == 'M') {
    pesoIdeal = (62.1 * (double.parse(altura!))) - 44.7;
    print(pesoIdeal);
  }
}
