import 'dart:io';

void main() {
  print("Informe o valor do limite");
  var limites = stdin.readLineSync()!;
  int limite = int.parse(limites);

  imprimir(limite);
}

String imprimir(int l) {
  String texto = '';
  for (int i = 1; i <= l; i++) {
    String aux = '';
    for (int x = 1; x <= i; x++) {
      texto = '$aux' + '$i';
      aux = texto;
    }

    print(texto);
  }

  return texto;
}
