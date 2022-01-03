import 'dart:io';

void main() {
  imprimir();
}

String imprimir() {
  String resultado = '';

  print("Informe o numero");
  var valor = stdin.readLineSync()!;
  String valorInvertido = realizarInversao(valor);

  resultado = 'O VALOR $valor Invertido = $valorInvertido';

  print(resultado);
  return resultado;
}

String realizarInversao(String v) {
  List x = v.split('');
  int z = x.length;
  var nueva = '';
  var aux = '';
  for (int i = 0; i < x.length; i++) {
    z--;
    nueva = aux + '${x[z]}';
    aux = nueva;
  }
  return aux;
}
