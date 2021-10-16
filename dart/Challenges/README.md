# PEQUENOS DESAFIOS 

Solucionando problemas de Logica de Programação com Dart

**Exercicio 01** <br>
Sistema de notas de uma escola, com media para passar de ano igual a **7** e o aluno estiver com media entre **5 e 6.9** ele sera encaminhado para a prova final e precisara tornar a media dele 7 mostre quantos pontos o aluno falta, se a media dele ficar entre **4 e 4.9** ele sera encaminhado a recuperação, então se ele tirar menos que isso ele perde de ano.

Codigo
```dart
import 'dart:io';

void main() {
  print("Informe seu nome");
  var nome = stdin.readLineSync();
  String aprovacao = "a calcular";

  print(
      "Informe suas notas respectivamente de cada Unidade (lembrando que são 3) ");
  var valor01 = stdin.readLineSync();
  var valor02 = stdin.readLineSync();
  var valor03 = stdin.readLineSync();
  double nota1 = double.parse(valor01!);
  double nota2 = double.parse(valor02!);
  double nota3 = double.parse(valor03!);

  double media = (nota1 + nota2 + nota3) / 3;
  var oAluno = "$nome sua Média Final foi : $media logo você foi ";
  String precisando = "Precisando de ${7 - media} Pontos";

  if (media >= 6) {
    aprovacao = "APROVADO";
    print(oAluno + aprovacao);
  } else if (media < 6 && media >= 5) {
    aprovacao = "PARA PROVA FINAL $precisando";
    print(oAluno + aprovacao);
  } else if (media < 5 && media >= 4) {
    aprovacao = "PARA A RECUPERAÇÃO $precisando";
    print(oAluno + aprovacao);
  } else {
    aprovacao = "REPROVADO pois estava $precisando";
    print(oAluno + aprovacao);
  }
}

```
