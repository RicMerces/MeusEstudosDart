import 'dart:io';

void main() {
  List a = [];
  List b = [];
  List c = [];

  for (int i = 0; i < 10; i++) {
    print("Informe dois numero");
    var n1 = stdin.readLineSync()!;
    var n2 = stdin.readLineSync()!;

    a.add(int.parse(n1));
    b.add(int.parse(n2));

    if (i == 9) {
      for (int z = 0; z < 10; z++) {
        c.add(a[z]);
        c.add(b[z]);
      }
    }
  }
  print("Lista 01 = $a\n\n");
  print("Lista 02 = $b\n\n");
  print("Lista 03 = $c");
}
