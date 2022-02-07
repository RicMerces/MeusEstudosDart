import '../Model/Macaco.dart';
import 'dart:io';

Macaco m1 = new Macaco();
Macaco m2 = new Macaco();

main() {
  iniciar();
}

iniciar() {
  for (int i = 0; i < 2; i++) {
    print("Informe o nome do ${i + 1}º macaco");
    var nome = stdin.readLineSync()!;
    if (i == 0) {
      m1.nome = nome;
      acoes(m1.nome, i);
    } else {
      m2.nome = nome;
      acoes(m2.nome, i);
    }
  }
}

String acoes(nome, i) {
  int j = 1;
  while (j != 0) {
    print(
        "Informe a ação que você deseja realizar com o macaco chamado de $nome");
    print(
        "---------------------------------\n1- Comer\n2- Ver Bucho\n0- Finalizar ações com o $nome");
    var ij = stdin.readLineSync()!;
    j = int.parse(ij);
    if (i == 0) {
      if (j == 1) {
        m1.comer(alimentar(nome));
      } else if (j == 2) {
        print(m1.verBucho());
      }
    } else {
      if (j == 1) {
        m2.comer(alimentar(nome));
      } else if (j == 2) {
        print(m2.verBucho());
      }
    }
  }
  return nome;
}

String alimentar(nome) {
  print("Informe o alimento ");
  var alimento = stdin.readLineSync()!;
  if (alimento == m1.nome && nome == m1.nome ||
      alimento == m2.nome && nome == m1.nome) {
    print("Não da para se comer kkkkkkkk");
  } else if (alimento == m2.nome) {
    print("${m1.nome} vai se alimentar do Macaco ${m2.nome}");
    alimento = '${m2.bucho}';
  } else if (alimento == m1.nome) {
    print("${m2.nome} vai se alimentar do Macaco ${m1.nome}");
    alimento = '${m1.bucho}';
  } else {
    print("$alimento adicionado ao bucho");
  }
  return alimento;
}
