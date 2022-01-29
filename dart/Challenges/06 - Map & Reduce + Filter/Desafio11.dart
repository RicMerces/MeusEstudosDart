import 'dart:io';

void main() {
  print(gerarListas());
}

List gerarListas() {
  List lista01 = [];
  List lista02 = [];
  List lista03 = [];
  List listaFinal = [];

  for (int i = 0; i < 20; i++) {
    print("Informe um valor");
    var valor = stdin.readLineSync()!;
    int v = int.parse(valor);
    if (i % 2 == 0) {
      lista01.add(v);
    } else if (i % 3 == 0) {
      lista02.add(v);
    } else {
      lista03.add(v);
    }
  }

  listaFinal = gerarListaFinal(listaFinal, lista01, lista02, lista03);

  return listaFinal;
}

List gerarListaFinal(List lf, List l1, List l2, List l3) {
  for (int i = 0; i < 10; i++) {
    lf.add(l1[i]);
    lf.add(l2[i]);
    lf.add(l3[i]);
  }

  return lf;
}
