import 'dart:io';

void main() {
  print("Informe um data dd/mm/yy");
  var dd = stdin.readLineSync()!;
  var mm = stdin.readLineSync()!;
  var yy = stdin.readLineSync()!;

  int data = int.parse(dd);
  int mes = int.parse(mm);
  int ano = int.parse(yy);

  if (data > 31 && data < 1 && mes > 12 && mes < 1) {
    print("A DATA $data / $mes / $ano esta INVALIDA");
  } else if (data > 31 || data < 1 || mes > 12 || mes < 1) {
    print("A DATA $data / $mes / $ano esta INVALIDA");
  } else {
    print("A DATA $data / $mes / $ano esta VALIDA");
  }
}
