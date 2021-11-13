import 'dart:io';

void main() {
  print("Informe suas notas ");
  var nota01 = stdin.readLineSync()!;
  var nota02 = stdin.readLineSync()!;
  var nota03 = stdin.readLineSync()!;

  double media =
      (double.parse(nota01)) + (double.parse(nota02)) + (double.parse(nota03));
  print("Sua media = $media");

  if (media > 7) {
    print("APROVADO");
  } else if (media == 7) {
    print("APROVADO COM DISTINÇÃO");
  } else {
    print("REPROVADO");
  }
}
