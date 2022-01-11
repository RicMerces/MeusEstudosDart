import 'dart:io';

void main() {
  print("Informe um numero limite");
  var numeroLimite = stdin.readLineSync()!;
  int limite = int.parse(numeroLimite);

  imprimir(limite);
}

String imprimir(int l) {
  String texto = '';
  String aux = '';
  for (int i = 1; i <= l; i++) {
    texto = '$aux' + '$i';
    aux = texto;
    print(texto);
  }
  return texto;
}
