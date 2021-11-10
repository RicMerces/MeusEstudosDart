import 'dart:io';

void main() {
  var numero = stdin.readLineSync()!;
  int n = int.parse(numero);
  int fn = 1;
  int n1 = 0;
  int n2 = 1;
  for (int i = 0; i < n; i++) {
    print(fn);
    fn = n1 + n2;
    n1 = n2;
    n2 = fn;
  }
}
