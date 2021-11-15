main() {
  List aprovados = ['Ana', 'Carlos', 'João', 'Antonio', 'Jean'];
  print(aprovados is List); //Booleano para saber se esse valor é um lista
  print(aprovados); //Valores internos a lista
  print(aprovados.elementAt(
      2)); //Qual o terceiro elemento da lista levando em consideracao que o primeiro é sempre zero
  print(aprovados[
      1]); // nesse caso ele oberva o indice o que esta naquela posicao

  Map telefones = {
    'Ricardo': '+55 71 9999-9999',
    'Arnaldo': '+55 11 9999-9999',
    'Afonso': '+00 9133390-91313',
    'Ricardo': '+55 9988340-3244'
  };
  print(telefones is Map);
  print(telefones);
  print(telefones.length);
  print(telefones.values);
  print(telefones.keys);
  print(telefones.entries);

  Set times = {'Vasco', 'Santos', 'Bahia', 'Corinthians'};
  print(times);
  print(times is Set);
  print(times.length);
  times.add(123);
  times.add('Flamengo');
  times.add('Flamengo');
  times.add('Flamengo');
  times.add(10 + 10);
  print(times.length);
  print(times.first);
  print(times.last);
  print(times);
}

Set<String> conjunto = {'a', 'b', 'c'};
