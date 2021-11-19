import 'dart:io';

void main() {
  print("Informe um valor n ");
  var numero = stdin.readLineSync()!;
  int n = int.parse(numero);
  double um = 1;
  double z = 0;
  double soma = 0;
  print(um);
  for (int i = 1; i <= n; i++) {
    z = (1 / i);
    soma = um + z;
    print("+ 1/$i");
    um = soma;
  }
  print(soma);
}
