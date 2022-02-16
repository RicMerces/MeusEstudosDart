class Macaco {
  Macaco({required this.nome});

  String nome;
  List bucho = [];

  List comer(String alimento) {
    bucho.add(alimento);
    return bucho;
  }

  String alterarNome(String novoNome) {
    this.nome = novoNome;
    return nome;
  }

  String verBucho() {
    return 'O Bucho de $nome : \n$bucho';
  }
}

void main() {
  Macaco m1 = new Macaco(nome: 'Jorge');

  m1.comer('Espinafre');
  m1.comer('Banana');
  m1.comer('Paçoca');
  m1.comer('Pamonha');

  print(m1.verBucho());

  Macaco m2 = new Macaco(nome: 'Arnold');
}
