import 'dart:io';

void main() {
  receberDados();
}

String receberDados(){
  print("Informe o horario de agora");
  var horario = stdin.readLineSync()!;
  validacao(horario);

  return horario;
}


String horas(String h) {
  h.split('');
  int hora = int.parse(h[0] + h[1]);

  hora = hora - 12;

  h = "$hora:${h[3]}${h[4]}";
  print(h);
  return h;
}


String validacao (String h){
  while(h.length > 5){
    receberDados();
  }
  var hora = h.split('');
  String n = hora[0] + hora[1];
  while()
}


