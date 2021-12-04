import 'dart:io';

void main() {
  print("Informe o numero de funcionarios");
  var nF = stdin.readLineSync()!;
  int funcionarios = int.parse(nF);

  List w10 = [];
  List linux = [];
  List mac = [];

  for (int i = 0; i < funcionarios; i++) {
    print("Informe seu nome ");
    String nome = stdin.readLineSync()!;
    print("Olá $nome Qual SO você usa ?");
    print("[1] Windows");
    print("[2] Linux");
    print("[3] MacOS");
    var sn = stdin.readLineSync()!;
    int so = int.parse(sn);

    while (so > 3 || so < 1) {
      print("Não temos esse SO em nossos dispositivos");
    }
    if (so == 1) {
      print("Voce selecionou Windows");
      w10.add(nome);
    } else if (so == 2) {
      print("Voce selecionou Linux");
      linux.add(nome);
    } else if (so == 3) {
      print("Voce selecionou MacOS");
      mac.add(nome);
    }
  }
  String maior;
  if (w10.length > mac.length && w10.length > linux.length) {
    maior = "Windows";
  } else if (mac.length > w10.length && mac.length > linux.length) {
    maior = "MAC";
  } else if (linux.length > w10.length && linux.length > mac.length) {
    maior = "Linux";
  } else {
    maior = "Tivemos um empate";
  }

  print("O sitema operacional mais usado foi o $maior");
  print("Votos = $w10");
  print("Votos = $linux");
  print("Votos = $mac");
}
