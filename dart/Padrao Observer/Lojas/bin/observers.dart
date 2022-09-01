import 'dart:math';

import '../lib/models/loja.dart';

void main() {
  final loja = Loja();

  loja.addMercadoria('Celular');
  loja.addMercadoria('Geladeira');
  loja.addMercadoria('Notebook');

  for (var i = 0; i < 100; i++) {
    print('A mesa chegou ? ${loja.chegou('mesa')}');

    if (Random().nextInt(40) > 35) {
      loja.addMercadoria('mesa');
    }
  }
}
