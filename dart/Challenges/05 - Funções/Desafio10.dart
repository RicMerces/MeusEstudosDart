import 'dart:io';
import 'dart:math';

void main() {
  var iniciar = 's';
  while (iniciar == 's') {
    print("Iniciar Jogo de Craps");
    iniciar = stdin.readLineSync()!;
    var resultado = iniciar == 's' ? iniciarJogo() : "Fim";
    print(resultado);
  }
}

String iniciarJogo() {
  String resultado = '';
  print("Informe dois valores (Entre 2 e 12)");
  var v01 = stdin.readLineSync()!;
  var v02 = stdin.readLineSync()!;
  int v1 = int.parse(v01);
  int v2 = int.parse(v02);

  while (v1 > 12 || v1 < 2 || v2 > 12 || v2 < 2) {
    print("Os valores devem ser Entre 2 e 12");
    v01 = stdin.readLineSync()!;
    v02 = stdin.readLineSync()!;
    v1 = int.parse(v01);
    v2 = int.parse(v02);
  }

  int z = realizarSorteio();

  resultado = z == v1 || z == v2 ? 'Você ganhou o jogo !!' : 'Você perdeu';

  return resultado;
}

int realizarSorteio() {
  var rng = new Random();
  int x = rng.nextInt(12);
  while (x < 2) {
    rng.nextInt(12);
  }
  print("O valor sorteado foi $x");
  return x;
}
