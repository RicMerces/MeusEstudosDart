import 'dart:io';

void main() {
  receberNumeros();
}

double receberNumeros() {
  for (int i = 0; i < 5; i++) {
    print("Informe o numero ${i + 1}");
    var num = stdin.readLineSync()!;
  }
}
