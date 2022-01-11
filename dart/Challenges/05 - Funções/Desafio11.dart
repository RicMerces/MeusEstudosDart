import 'dart:io';

void main() {
  dataNascimento();
}

String dataNascimento() {
  String resultadoFinal = '';
  print("Informe sua data de nascimento\n(DD/MM/YY)");
  var data = stdin.readLineSync()!;
  validacao(data);

  return resultadoFinal;
}

String validacao(var data) {
  var date = data.split('');

  if (date[2] == '/' && date[5] == '/') {
    validarDia(date[0], date[1]);
    validarMes(date[3], date[4]);
    validarAno(date[6], date[7]);
  } else {
    dataNascimento();
  }
}

int validarDia(var v1, var v2) {}
int validarMes(var v1, var v2) {}
int validarAno(var v1, var v2) {}
