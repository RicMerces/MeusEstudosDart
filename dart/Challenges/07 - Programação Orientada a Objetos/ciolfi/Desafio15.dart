class Bixinho {
  Bixinho({required this.nome, required this.idade});

  String nome;
  int idade;
  int fome = 10;
  bool saude = true;
  bool brincar = false;

  int alimentar() {
    fome--;
    medirSaude();
    return fome;
  }

  int timer() {
    fome++;
    medirSaude();
    brincar == false;
    return fome;
  }

  bool medirSaude() {
    if (fome > 10 && brincar == false || fome < 0 && brincar == false) {
      this.saude = false;
    } else {
      this.saude = true;
    }
    return this.saude;
  }

  String alterarNome(String novoNome) {
    this.nome = novoNome;
    print("Nome alterado");
    return nome;
  }

  bool brincarComBixinho() {
    brincar == true;
    return brincar;
  }
}

void main() {
  Bixinho b = new Bixinho(nome: 'Toco', idade: 1);
  print(b.nome);

  b.alterarNome('Kyky');
  print(b.nome);
  b.brincarComBixinho;
  print(b.saude);
  b.alimentar();
  print(b.fome);
  print(b.saude);
  b.timer();
  b.timer();
  b.timer();
  b.timer();

  print(b.fome);
  print(b.saude);
}
