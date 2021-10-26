import 'dart:io';

void main() {
  print("Informe quantos MB tem o arquivo para dowloand ");
  var megas = stdin.readLineSync()!;

  print("Informe qual a velocidade da internet e Mbps ");
  var vel = stdin.readLineSync()!;

  double segundos = ((double.parse(megas) / double.parse(vel)));

  print("O tempo estimado é de ${segundos / 60} minutos");
}
