import 'dart:io';
import 'dart:math';

void main() {
  imprimir();
}

String imprimir() {
  print("Informe uma palavra");
  var p = stdin.readLineSync()!;

  var palavra = embaralhar(p);

  print(palavra);
  return palavra;
}

String embaralhar(var p) {
  var palavra = p.split('');
  var rng = new Random();

  int t = palavra.length;

  String p1 = '';
  String plus = '';

  for (int i = 0; i < t; i++) {
    int x = rng.nextInt(t);
    p1 = '${palavra[x]}$plus';
    plus = p1;
  }

  return p1;
}
