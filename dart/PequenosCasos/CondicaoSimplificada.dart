import 'dart:io';

void main() {
  print('Esta chovendo? (s/N)');
  bool estaChovendo = stdin.readLineSync() == 's';

  print('Esta frio? (s/N)');
  bool estaFrio = stdin.readLineSync() == 's';

  String resultado = estaChovendo || estaFrio ? "Ficar em casa" : "Sair!!";
  print(resultado);
}
