import 'dart:io';

class Bola {
  Bola({required this.circuferencia, required this.material});

  String? _cor;
  double circuferencia;
  String material;

  String? get cor {
    return _cor;
  }

  void set cor(String? cor) {
    print("Cor trocada de $_cor para $cor");
    _cor = cor;
  }

  String toString() {
    return '\nA bola tem a cor = $cor, circuferencia = $circuferencia e o material = $material\n';
  }
}

void main() {
  iniciarPrograma();
}

iniciarPrograma() {
  print("Informe a cor da bola");
  var corDaBola = stdin.readLineSync()!;
  print("Informe a medida do raio da circuferencia ");
  var r = stdin.readLineSync()!;
  print("Informe o material da circuferencia");
  var m = stdin.readLineSync()!;

  Bola bola01 = Bola(circuferencia: double.parse(r), material: m);
  bola01.cor = corDaBola;

  print(bola01);

  print("Alterar cor");
  var novaCor = stdin.readLineSync()!;
  bola01.cor = novaCor;
  print(bola01);
}
