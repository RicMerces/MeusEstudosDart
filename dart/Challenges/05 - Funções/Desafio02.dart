import 'dart:io';

void main() {
  var numeroLimite = stdin.readLineSync()!;
  int n = int.parse(numeroLimite);

  imprimir(n);
}

String imprimir(int limite) {
  int numero = 0;
  int x = 0;
  String sText = '';
  var text = '';
  for (int i = 0; i >= limite; i++) {
    numero++;
    for (int z = 0; z >= numero; z++) {
      x++;
      text = '$x' + ' $sText';
      sText = text;
      print(text);
    }
    print("\n");
  }
  return text;
}
