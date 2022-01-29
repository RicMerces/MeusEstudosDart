import 'dart:io';

void main() {
  informarTemperatura();
}

String informarTemperatura() {
  List mouth = [
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
  Map MapaFinal = {};
  int x = 0;
  int aux = 0;
  int t = 0;
  for (int i = 0; i < mouth.length; i++) {
    print("Informe a temperatura Média do mês de ${mouth[i]}");
    var temp = stdin.readLineSync()!;
    t = int.parse(temp);
    x = t + aux;
    aux = x;

    MapaFinal['${mouth[i]}'] = '$t°C';
  }

  String resultado = '$MapaFinal e o total = $x';

  print(resultado);
  return resultado;
}
