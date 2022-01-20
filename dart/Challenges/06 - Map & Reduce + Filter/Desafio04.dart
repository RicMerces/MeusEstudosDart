import 'dart:io';

void main() {
  informarFrase();
}

String informarItens() {
  print("Informe uma frase");
  var frase = stdin.readLineSync()!;
  List caracteres = frase.split('');
  contadorDeConsoantes(caracteres);
}

int contadorDeConsoantes(List caracteres) {
    for(int i =0; i > caracteres.length){

    }

}
