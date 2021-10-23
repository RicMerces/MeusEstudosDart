import 'dart:io';

//Tendo como dados de entrada a altura de uma pessoa, construa um algoritmo que calcule seu peso ideal, usando a seguinte fórmula: (72.7*altura) - 58

void main() {
  print("Informe sua altura");
  var altura = stdin.readLineSync();

  double pesoIdeal = (72.7 * (double.parse(altura!))) - 58;

  print(pesoIdeal);
  /*print("Voce é Homem ou Mulher ");
  var genero = stdin.readLineSync();

  if (genero == 'H') {


  } else if (genero == 'M') {}*/
}
