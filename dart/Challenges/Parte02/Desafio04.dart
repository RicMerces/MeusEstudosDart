import 'dart:io';

void main() {
  print("Informe uma vogal ou consoante");
  var letra = stdin.readLineSync()!;

  if (letra.toUpperCase() == 'A' ||
      letra.toUpperCase() == 'E' ||
      letra.toUpperCase() == 'I' ||
      letra.toUpperCase() == 'O' ||
      letra.toUpperCase() == 'U') {
    print("VOGAL");
  } else {
    print("CONSOANTE");
  }
  // } else if (double.parse(letra) % 2 == 0 || double.parse(letra) % 2 != 0) {
  //   print("AMIGO ISSO É UM NUMERO");
  // } else if (letra.toUpperCase() != 'A' ||
  //     letra.toUpperCase() != 'E' ||
  //     letra.toUpperCase() != 'I' ||
  //     letra.toUpperCase() != 'O' ||
  //     letra.toUpperCase() != 'U') {
  //   print("CONSOANTE");
  // }
}
