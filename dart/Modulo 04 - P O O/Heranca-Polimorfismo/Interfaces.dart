void main() {
  RepositoriosPessoas r = RepositorioPessoasRemote();
  RepositoriosPessoas r1 = RepositorioPessoasLocal();
  print(r.ler(2));
  print(r1.ler(3));
}

class RepositorioPessoasRemote implements RepositoriosPessoas {
  @override
  void adicionar(String nome) {
    // TODO: implement adicionar
  }

  @override
  void apagar(int i) {
    // TODO: implement apagar
  }

  @override
  String ler(int i) {
    return 'Rick';
  }
}

class RepositorioPessoasLocal implements RepositoriosPessoas {
  @override
  void adicionar(String nome) {
    // TODO: implement adicionar
  }

  @override
  void apagar(int i) {
    // TODO: implement apagar
  }

  @override
  String ler(int i) {
    // TODO: implement let
    return 'Richard';
  }
}

abstract class RepositoriosPessoas {
  String ler(int i);
  void adicionar(String nome);
  void apagar(int i);
}
