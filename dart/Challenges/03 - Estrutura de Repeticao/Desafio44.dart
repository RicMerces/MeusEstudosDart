import 'dart:io';

void main() {
  int deli = 0;
  int mocas = 0;
  int nulo = 0;
  int branco = 0;
  int total = 10;

  for (int i = 0; i < total; i++) {
    print("Informe em quem você deseja votar");
    print("|59| Jailson");
    print("|88| Moacir");
    print("|0|  Branco");
    print("Qualquer outro valor = nulo");

    var votacao = stdin.readLineSync()!;
    int voto = int.parse(votacao);

    if (voto == 59) {
      deli++;
    } else if (voto == 88) {
      mocas++;
    } else if (voto == 0) {
      branco++;
      if (mocas > deli) {
        mocas++;
      } else if (deli > mocas) {
        deli++;
      }
    } else {
      nulo++;
    }
  }
  double bporcento = ((branco * total) / 100);
  double nporcento = ((nulo * total) / 100);
  print("A PORCENTAGENS DE VOTOS NULOS = ${nporcento * 100} %");
  print("A PORCENTAGENS DE VOTOS BRANCOS = ${bporcento * 100}%");

  if (mocas > deli) {
    print("Moacir foi o vencedor com $mocas votos");
  } else if (deli > mocas) {
    print("Jailson foi o vencedor com $deli votos");
  } else {
    print("EMPATE TECNICO");
  }
}
