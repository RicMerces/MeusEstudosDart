void main() {
  //Classe são as definiçoes de um objeto
  //Objeto é um pessoa, uma casa, uma produto... algo palpavel
  //Atributos são caracteristicas presentes nesse objeto

  Pessoa pessoa01 = Pessoa(); //Objeto
  pessoa01.nome = 'Ricardo';
  pessoa01.idade = 20;
  print(pessoa01.nome);
  print(pessoa01.idade);

  pessoa01.aniversario();
  print(pessoa01.idade);

  print("Trocar Nome de ${pessoa01.nome}");
  pessoa01.trocarNome('Roberval');
  print("Seu novo nome = ${pessoa01.nome}");

  print(pessoa01.casado);
  pessoa01.casar();
  print(pessoa01.casado);

  //Outro objeto
  Pessoa pessoa02 = Pessoa();
  pessoa02.nome = 'Wagner';
  print("${pessoa02.nome}");
  print("${pessoa02.idade}");
  pessoa02.casado = true;
  print(pessoa02.casado);

  pessoa02.aniversario(); //idade == Null
  pessoa02.idade = 31;
  pessoa02.aniversario();
  print(pessoa02.idade);
}

class Pessoa {
  //Classe
  String? nome; //Atributo
  int? idade;
  bool casado = false;

  //Metodo
  int? aniversario() {
    print("Parabens $nome, de adeus aos $idade anos e de ola aos");
    if (idade != null) {
      idade = idade! + 1;
    }

    return idade;
  }

  void casar() {
    print("Parabens pelo casamento $nome");
    casado = true;
  }

  void trocarNome(String novoNome) {
    nome = novoNome;
  }
}
