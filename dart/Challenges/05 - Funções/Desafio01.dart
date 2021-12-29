import 'dart:io';

void main() {
  imprimir(7);
}

String imprimir(int valor) {
  String inicial = '';
  String sup = '';
  for (int i = 0; i >= valor; i++) {
    for (int x = 0; x >= i; x++) {
      inicial = '$i' + ' $sup';
      sup = inicial;
      print(inicial);
    }
    print(inicial);
    print('\n');
  }
  print('$valor');
  return inicial;
}
