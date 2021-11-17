import 'dart:io';

void main() {
  //Cardapio
  int hotDog = 1;
  int hamburger = 1;
  int cheseburger = 1;
  int refrigerante = 1;
  int paocomovo = 1;

  int x = 1;
  while (x != 0) {
    print(
        "Informe qual o codigo do produto que você deseja\nDigite 0 para finalizar a compra\n--------------------------\n|100| PARA HOTDOG\n|101| PARA HAMBURGER\n|102| PARA CHESEBURGER\n|103| PARA PAO COM OVO\n|200| PARA REFRIGERANTE");
    var y = stdin.readLineSync()!;
    x = int.parse(y);

    print("Informe a quantidade");
    var z = stdin.readLineSync()!;
    int qtd = int.parse(z);
    while(qtd <= 0 ){
      print("Informe a quantidade");
      var z = stdin.readLineSync()!;
      qtd = int.parse(z);
    }
    if (x == 100) {
     if(qtd == 1){
       hotDog++;
     }else{
       int h = 
     }
      
    }
    if (x == 101) {
      hamburger++;
    }
    if (x == 102) {
      cheseburger++;
    }
    if (x == 103) {
      paocomovo++;
    }
    if (x == 200) {
      refrigerante++;
    }
  }
}
