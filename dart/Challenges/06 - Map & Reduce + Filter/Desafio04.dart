import 'dart:io';

void main() {
  informar();
}

String informar() {
  print("Informe uma palavra");
  String frase = stdin.readLineSync()!;
  String fraseFinal = contadorDeConsoantes(frase);

  print("$fraseFinal");
  return fraseFinal;
}

String contadorDeConsoantes(String f) {
  List consoantes = [
    'B',
    'C',
    'D',
    'F',
    'G',
    'H',
    'J',
    'K',
    'L',
    'M',
    'N',
    'P',
    'Q',
    'R',
    'S',
    'T',
    'V',
    'W',
    'X',
    'Y',
    'Z'
  ];
  List ListaFinal = [];
  var frase = f.split('');
  for (int i = 0; i < f.length; i++) {
    ListaFinal = verificar(consoantes, frase[i]);
  }
  String resultado = 'Os valores finais = ${ListaFinal}';
  return resultado;
}

List verificar(List c, String f) {
  List listaFinal = [];
  for (int i = 0; i < c.length; i++) {
    if (f == c[i]) {
      listaFinal.add(f);
    }
  }

  return listaFinal;
}
