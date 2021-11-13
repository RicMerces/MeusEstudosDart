import 'dart:io';

void main() {
  var par = 0;
  var impar = 0;
  for (int i = 1; i <= 10; i++) {
    print("Informe o $iº numero");
    var n = stdin.readLineSync()!;

    if (int.parse(n) % 2 == 0) {
      par++;
    } else {
      impar++;
    }
  }

  print("Tivemos $par numeros pares e $impar numeros impar");
}
