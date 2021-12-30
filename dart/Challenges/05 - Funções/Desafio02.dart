import 'dart:io';

void main() {
  var numeroLimite = stdin.readLineSync()!;
  int n = int.parse(numeroLimite);

  imprimir(n);
}

void imprimir(int limite) {
  int x = 0;
  String sText = '';
  var text = '';
  for (int i = 0; i < limite; i++) {
    x++;
    text = '$sText ' + '$x';
    sText = text;
    print(text);
  }
}
