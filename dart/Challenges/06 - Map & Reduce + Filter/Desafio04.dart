import 'dart:io';

void main() {
  informar();
}

String informar() {
  print("Informe uma palavra");
  String frase = stdin.readLineSync()!;

  contadorDeConsoantes(frase);
}

String contadorDeConsoantes(String f) {
  List consoantes = [B,C,D,F,G,H,J,K,L,M,N,P,Q,R,S,T,V,W,X,Y,Z];

  var frase = f.split('');
  for (int i =0; i < f.length; i++){
    while(frase[i] in consoantes ){
      
    }
  }



}
