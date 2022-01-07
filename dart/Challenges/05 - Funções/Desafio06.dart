import 'dart:io';

void main() {
  print("Informe o horario de agora");
  var horario = stdin.readLineSync()!;
  // validacao(horario);
  horas(horario);
}

String horas(String h) {
  h.split('');
  int hora = int.parse(h[0] + h[1]);

  hora = hora - 12;

  h = "$hora:${h[3]}${h[4]}";
  print(h);
  return h;
}
