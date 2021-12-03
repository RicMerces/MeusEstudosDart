import 'dart:io';

void main() {
  List a = [];
  List b = [];
  List c = [];
  List d = [];
  List e = [];
  List f = [];
  List g = [];
  List h = [];
  List y = [];

  for (int i = 0; i < 4; i++) {
    print("Informe seu nome");
    String nome = stdin.readLineSync()!;
    print("Informe o valor de sua venda");
    var valor = stdin.readLineSync()!;
    double v = double.parse(valor);
    print("Informe sua porcentagem");
    var porcento = stdin.readLineSync()!;
    double p = double.parse(porcento);

    double vFinal = 200 + (v * (p / 100));

    if (vFinal < 300) {
      a.add(nome);
    } else if (vFinal >= 300 && vFinal < 400) {
      b.add(nome);
    } else if (vFinal >= 400 && vFinal < 500) {
      c.add(nome);
    } else if (vFinal >= 500 && vFinal < 600) {
      d.add(nome);
    } else if (vFinal >= 600 && vFinal < 700) {
      e.add(nome);
    } else if (vFinal >= 700 && vFinal < 800) {
      f.add(nome);
    } else if (vFinal >= 800 && vFinal < 900) {
      g.add(nome);
    } else if (vFinal >= 900 && vFinal < 1000) {
      h.add(nome);
    } else {
      y.add(nome);
    }
  }
  print("$a");
  print("$b");
  print("$c");
  print("$d");
  print("$e");
  print("$f");
  print("$g");
  print("$h");
  print("$y");
}
