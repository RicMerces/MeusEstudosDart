import 'dart:io';

void main() {
  Map produtos = {
    'Camisa do Liverpool': 300,
    'Camisa do Bahia': 130,
    'Camisa da Seleção': 200
  };

  print(produtos.keys);

  print("Qual o produto você deseja ? (Informe o time)");
  var queroComprar = stdin.readLineSync()!;

  if (queroComprar.toUpperCase() == 'BAHIA') {
    print("O uniforme selecionado foi o do Bahia");
  } else if (queroComprar.toUpperCase() == 'LIVERPOOL') {
    print("O uniforme selecionado foi o do Liverpool");
  } else if (queroComprar.toUpperCase() == 'BRASIL') {
    print("O uniformme selecionado foi o da seleção brasileira")
  }
}
