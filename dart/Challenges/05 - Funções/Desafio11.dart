import 'dart:io';

void main() {
  dataNascimento();
}

String dataNascimento() {
  String resultadoFinal = '';
  print("Informe sua data de nascimento\n(DD/MM/YY)");
  var data = stdin.readLineSync()!;

  resultadoFinal = validacao(data);
  print(resultadoFinal);
  return resultadoFinal;
}

String validacao(var data) {
  var date = data.split('');
  String ano = '';
  String mes = '';
  int dia = 0;
  if (date[2] == '/' && date[5] == '/') {
    dia = validarDia(date[0], date[1]);
    mes = validarMes(date[3], date[4]);
    ano = validarAno(date[6], date[7]);
  } else {
    print("FORMATO DE DATA INVALIDA");
    dataNascimento();
  }

  String dataFinal = "$dia $mes , $ano";

  return dataFinal;
}

int validarDia(var v1, var v2) {
  String x = v1 + v2;
  int dia = int.parse(x);

  while (dia > 31) {
    print("Dia invalido");
    print("Informe novamente o dia ");
    var j = stdin.readLineSync()!;
    dia = int.parse(j);
  }
  return dia;
}

String validarMes(var v1, var v2) {
  String x = v1 + v2;
  int mes = int.parse(x);

  while (mes > 12) {
    print("Mes invalido");
    print("Informe novamente o Mes ");
    var j = stdin.readLineSync()!;
    mes = int.parse(j);
  }

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

  String mesFinal = "de ${meses[mes - 1]}";

  return mesFinal;
}

String validarAno(var v1, var v2) {
  String x = v1 + v2;
  int ano = int.parse(x);
  String anoFinal = '';
  if (ano > 22) {
    anoFinal = '19$ano';
  } else if (ano < 10) {
    anoFinal = '200$ano';
  } else {
    anoFinal = '20$ano';
  }
  return anoFinal;
}
