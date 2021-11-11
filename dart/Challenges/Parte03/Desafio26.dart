import 'dart:io';

void main() {
  print("Informe o numero de eleitores");
  var eleitores = stdin.readLineSync()!;
  int ele = int.parse(eleitores);
  int voto = 0;

  var tr = 0;
  var dy = 0;
  var ij = 0;

  for (int i = 1; i <= ele; i++) {
    while (voto != 87 && voto != 96 && voto != 38) {
      print(
          "|| QUE COMECE A VOTAÇÃO ||\nTheo Esteves e Ricardo Oliveira [87]\nDavi Simoes e Yuri Lima [38] \nJean Canario e Jordan Brunors [96]");
      var votacao = stdin.readLineSync()!;
      voto = int.parse(votacao);
    }

    if (voto == 87) {
      tr++;
    } else if (voto == 96) {
      ij++;
    } else if (voto == 38) {
      dy++;
    }
  }
  print("TR = $tr");
  print("IJ = $ij");
  print("DY = $dy");
}
