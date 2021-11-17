import 'dart:io';

void main() {
  //Cardapio
  int hotDog = 0;
  int hamburger = 0;
  int cheseburger = 0;
  int refrigerante = 0;
  int paocomovo = 0;

  double valorApagar = 1;

  int x = 1;
  while (x != 0) {
    print(
        "Informe qual o codigo do produto que você deseja\nDigite 0 para finalizar a compra\n--------------------------\n|100| PARA HOTDOG\n|101| PARA HAMBURGER\n|102| PARA CHESEBURGER\n|103| PARA PAO COM OVO\n|200| PARA REFRIGERANTE");
    var y = stdin.readLineSync()!;
    x = int.parse(y);
    int qtd = 0;
    if (x == 0) {
    } else {
      print("Informe a quantidade");
      var z = stdin.readLineSync()!;
      qtd = int.parse(z);
      while (qtd < 0) {
        print("Informe a quantidade");
        var z = stdin.readLineSync()!;
        qtd = int.parse(z);
      }
    }

    if (x == 100) {
      if (qtd == 1) {
        hotDog++;
      } else {
        hotDog = hotDog + qtd;
      }
      print(hotDog);
      valorApagar = valorApagar + (hotDog * 1.20);
    }
    if (x == 101) {
      if (qtd == 1) {
        hamburger++;
      } else {
        hamburger = hamburger + qtd;
      }
      valorApagar = valorApagar + (cheseburger * 1.40);
      print(hamburger);
    }
    if (x == 102) {
      if (qtd == 1) {
        cheseburger++;
      } else {
        cheseburger = cheseburger + qtd;
      }
      print(cheseburger);
      valorApagar = valorApagar + (cheseburger * 1.30);
    }
    if (x == 103) {
      if (qtd == 1) {
        paocomovo++;
      } else {
        paocomovo = paocomovo + qtd;
      }
      print(paocomovo);
      valorApagar = valorApagar + (paocomovo * 1.50);
    }
    if (x == 200) {
      if (qtd == 1) {
        refrigerante++;
      } else {
        refrigerante = refrigerante + qtd;
      }
      print(refrigerante);
      valorApagar = valorApagar + (refrigerante * 1.00);
    }
  }

  print(valorApagar);
}
