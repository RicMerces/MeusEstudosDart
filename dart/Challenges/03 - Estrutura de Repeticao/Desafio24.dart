import 'dart:io';

void main() {
  int x = 0;
  var y = 0;
  for (int i = 1; i <= 4; i++) {
    print("Informe sua media do $iº Bimestre");
    var m = stdin.readLineSync()!;
    int media = int.parse(m);

    y = media + x;
    x = y;
  }

  print(y / 4);
}
