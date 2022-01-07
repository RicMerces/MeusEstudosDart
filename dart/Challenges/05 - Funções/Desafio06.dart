import 'dart:io';

void main() {
  receberDados();
}

String receberDados() {
  print("Informe o horario de agora");
  var horario = stdin.readLineSync()!;
  validacao(horario);

  return horario;
}

String alterarHoras(String h) {
  h.split('');
  int hora = int.parse(h[0] + h[1]);
  String periodo = '';
  if (hora > 12) {
    hora = hora - 12;
    periodo = 'da Tarde';
  } else {
    periodo = 'da Manhã';
  }

  h = "$hora:${h[3]}${h[4]} ";
  print(h + periodo);
  return h;
}

String validacao(String h) {
  while (h.length != 5) {
    receberDados();
  }

  var hora = h.split('');

  String n1 = hora[0] + hora[1];
  String n2 = hora[3] + hora[4];

  while (int.parse(n1) > 24) {
    receberDados();
  }

  while (int.parse(n2) > 59) {
    receberDados();
  }

  while (hora[2] != ':') {
    receberDados();
  }

  alterarHoras(h);
  return h;
}
