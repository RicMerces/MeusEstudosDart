import 'dart:io';

//Ususario deve informar as notas de cada bimestre e eu devo imprimir a media
void main() {
  print("Informe a nota de cada bimestre");
  var nota01 = stdin.readLineSync();
  var nota02 = stdin.readLineSync();
  var nota03 = stdin.readLineSync();
  var nota04 = stdin.readLineSync();

  double media = (double.parse(nota01!) +
          double.parse(nota02!) +
          double.parse(nota03!) +
          double.parse(nota04!)) /
      4;

  print(media);
}
