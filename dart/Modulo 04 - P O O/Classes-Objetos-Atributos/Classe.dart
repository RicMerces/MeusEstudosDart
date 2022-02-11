void main() {
  //Classe são as definiçoes de um objeto
  //Objeto é um pessoa, uma casa, uma produto... algo palpavel
  //Atributos são caracteristicas presentes nesse objeto

  Pessoa pessoa01 = Pessoa(); //Objeto
  pessoa01.nome = 'Ricardo';
  pessoa01.idade = 20;
  print(pessoa01.nome);
  print(pessoa01.idade);

  //Outro objeto
  Pessoa pessoa02 = Pessoa();
  pessoa02.nome = 'Wagner';
  print("${pessoa02.nome}");
  print("${pessoa02.idade}");
  pessoa02.casado = true;
  print(pessoa02.casado);
}

class Pessoa {
  //Classe
  String? nome; //Atributo
  int? idade;
  bool casado = false;
}
