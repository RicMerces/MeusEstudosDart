import 'dart:io';

void main() {
  print("Informe a area a ser pintada");
  var area = stdin.readLineSync()!;
  double litro = (double.parse(area)) / 3;
  print("É necessario $litro Litros");
  /*int lata = 1;
   while (litro > 18) {
    litro - 18;
    lata++;
  } */
  double lata = litro / 18;

  print("Numero de latas = $lata");
  double preco = lata * 80;
}
