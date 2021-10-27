import 'dart:io';

void main() {
  print("Informe seu turno");
  String turno = stdin.readLineSync()!;

  if (turno.toUpperCase() == 'MATUTINO') {
    print("Bom Dia !");
  } else if (turno.toUpperCase() == 'VESPERTINO') {
    print("Boa Tarde !");
  } else if (turno.toUpperCase() == 'NOTURNO') {
    print("Boa Noite !");
  } else {
    print("Esse turno não existe");
  }
}
