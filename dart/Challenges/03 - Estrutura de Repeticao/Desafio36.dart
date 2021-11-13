import 'dart:io';

void main() {
  print("Informe a tabuada que você deseja realizar");
  var tab = stdin.readLineSync()!;
  int tabuada = int.parse(tab);
  /////////////////////////////////////
  print("Informe o numero inicial");
  var init = stdin.readLineSync()!;
  int inicial = int.parse(init);
  /////////////////////////////////////
  print("Informe o numero final");
  var finish = stdin.readLineSync()!;
  int finaliz = int.parse(finish);
  /////////////////////////////////////
  while (finaliz < inicial) {
    print("Informe um numero final maior que o inicial");
    var finish = stdin.readLineSync()!;
    finaliz = int.parse(finish);
  }

  int y = 0;
  while (finaliz >= inicial) {
    y = tabuada * inicial;
    print("$tabuada X $inicial = $y");
    inicial++;
  }
}
