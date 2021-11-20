import 'dart:io';

void main() {
  List a = [];
  List b = [];
  List c = [];
  List d = [];

  for (int i = 0; i < 10; i++) {
    print("Informe dois numero");
    var n1 = stdin.readLineSync()!;
    var n2 = stdin.readLineSync()!;
    var n3 = stdin.readLineSync()!;

    a.add(int.parse(n1));
    b.add(int.parse(n2));
    c.add(int.parse(n3));

    if (i == 9) {
      for (int z = 0; z < 10; z++) {
        d.add(a[z]);
        d.add(b[z]);
        d.add(c[z]);
      }
    }
  }
  print("Lista 01 = $a\n\n");
  print("Lista 02 = $b\n\n");
  print("Lista 03 = $c\n\n");
  print("Lista 03 = $d");
}
