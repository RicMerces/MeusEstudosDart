import 'dart:io';

void main() {
  print(
      "Informe seu genero F (Para feminino) M (Para Masculino) Qualquer outro caractere (outro)");
  String? genero = stdin.readLineSync();

  if (genero == 'F') {
    print("Feminino");
  } else if (genero == 'M') {
    print("Masculino");
  } else {
    print("Outro");
  }
}
