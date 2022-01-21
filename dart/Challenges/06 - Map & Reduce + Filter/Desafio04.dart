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
  List listas = [];
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
  for (int i = 0; i < frase.length; i++) {
    ListaFinal = verificar(consoantes, frase[i], listas);
  }
  String resultado = 'Os valores finais = ${ListaFinal}';
  return resultado;
}

List verificar(List c, String f, List listas) {
  for (int i = 0; i < c.length; i++) {
    if (f.toUpperCase() == c[i]) {
      listas.add(f);
    }
  }

  return listas;
}
