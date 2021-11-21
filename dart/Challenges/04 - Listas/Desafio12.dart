import 'dart:io';

void main() {
  int temperatura = 0;
  int x = 0;
  List temperaturas = [];
  for (int i = 0; i < 12; i++) {
    List meses = [
      'Janeiro',
      'Fevereiro',
      'Março',
      'Abril',
      'Maio',
      'Junho',
      'Julho',
      'Agosto',
      'Setembro',
      'Outubro',
      'Novembro',
      'Dezembro'
    ];

    print("Informe a temperatura media do mês de ${meses[i]}");
    var temp = stdin.readLineSync()!;
    int t = int.parse(temp);

    temperaturas.add(t);
    temperatura = t + x;
    x = temperatura;
  }

  print("A temperatura anual = $temperatura");
  print("Lista de temperaturas = $temperaturas");
}
