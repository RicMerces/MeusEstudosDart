import 'dart:io';

void main() {
  print("Informe suas três notas");
  var n1 = stdin.readLineSync()!;
  var n2 = stdin.readLineSync()!;
  var n3 = stdin.readLineSync()!;

  double media = (double.parse(n1) + double.parse(n2) + double.parse(n3)) / 3;

  print("Media = $media");
  if (media > 7) {
    print("APROVADO");
  } else if (media == 7) {
    print("APROVADO COM DISTINÇÃO");
  } else if (media < 7) {
    print("REPROVADO");
  } else if (media < 0 || media > 10) {
    print("ESSA MEDIA É IMPOSSIVEL");
  }
}
