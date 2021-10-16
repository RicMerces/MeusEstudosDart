# Estrutura de Controle

As estruturas de controle são os pilares da logica de programação de toda linguagem, normalmente são mantidos semelhantes em varias linguagens
com o Dart não seria diferente.

- Estrutura Condicional
- Estrutura de Seleção
- Estrutura de Repetição

### Estrutura Condicional 
A estrutura condicional pode ser feita por algumas maneiras
O if e else assim como em todas as linguagens tem a funcionalidade de através de uma condição definir se o que foi definido esta dentro do escopo, se não estiver vai para o else porem se for o else if havera outra condição e assim por diante.

- If e Else
- If e Else
- If e Else If
- Estrutura Simplificada

O if e else é uma estrutura muito importante para o codigo as vezes pode até definir o rumo do programa, tratar exceções, estrutura de seleção... 


Mas o principal objetivo é realizar uma decisão seja simples 


### Estrutura de Repetição 
A estrutura de Repetição é uma maneira simplificada de automatizar o codigo, ele permite que através de uma condição, Podendo haver uma repetição dependendo se a variavel faz parte do escopo da condição ou não...

- For
- While
- Do While
- Try Catch

Essas estruturas são as mais comuns na hora do codigo 

### For
No for temos como declarar a variavel, estabelecer uma condição e um contador tudo dentro do primeiro parenteses. Nesse caso o codigo vai imprimir "Numero 1" até "Numero 10"
```dart
void main(){
  for(int a = 1; a <= 10; a++){
    print("Numero $a");
  }
}
```
Podemos usar o for para rodar uma lista, imprimir os valores internos, somar mais um valor, adicionar uma mensagem anterior...

```dart
void main() {
  var notas = [8.9, 9.3, 9.8, 10.0, 6.9];
  for (var i = 0; i < notas.length; i++) {
    print("Nota ${i + 1} = ${notas[i]}");
  }
}
```
**Nesse exemplo o que acontece ?**

O for ele vai rodar até o limite que é *notas.length* que basicamente é o tamanho da lista, enquanto **i** for menor que o tamanho da lista que no caso é 5 sera imprimido a posição da nota que usa um **i + 1** pois foi necessario a principio deixar os valores começando em zero pois na lista funciona assim, se colocassemos 1 não imprimiria o primeiro valor.

Existem outras maneiras de escrever o codigo caso seja necessario realiazar um codigo mais limpo sem muita comando, podemos usar o elemento **in** criando uma variavel que vai percorrer um valor um por um dentro da lista até acabar 

```dart
void main() {
  var notas = [8.9, 9.3, 9.8, 10.0, 6.9];

  for (var nota in notas) {
    print("O valor da nota é $nota.");
  }
}
```
Não usamos um contador porem podemos usar ele incluindo um contador fora da estrutura de parenteses do for 
```dart
void main() {
  var notas = [8.9, 9.3, 9.8, 10.0, 6.9];
  int i = 1;
  for (var nota in notas) {
    print("A Nota $i = $nota.");
    i++;
  }
}
```

Além desses modos podemos incluir uma lista dentro da outra que funciona mais ou menos assim :

```dart
main(){
    var matriz = [
        ["Messi", "Neymar"],
        ["Cristiano", "Marcelo"],
        ["Salah", "Mané"],
        ["Pogba", "Griezman"],
        ["Thiago Silva", "David Luiz"] 
    ];

    for(var duplas in matriz){
        for(var jogador in duplas){
            print("Jogador : $jogador");
        }
    }
}
```
O for percorre tambem MAP assim como nas listas 
```dart
void main() {
  var lancamento = {
    'LOST': 2004,
    'The Walking Dead': 2008,
    'Game Of Thrones': 2013,
    'Arrow': 2012,
    'Vikings': 2013
  };

  for (var seriado in lancamento.keys) {
    print("A serie '$seriado' foi lançada em ${lancamento[seriado]}");
  }
}
```
Juntos ou separadamente, juntos no caso coloquemos que a variavel esta contida dentro da key.

```dart
for(var ano in lancamento.values){
    print("A nota é $ano");
}

for(var nomeDaSerie in lancamento.keys){
    print("A nota é $nomeDaSerie");
}

for(var registro in lancamento.entries){
    print("A serie '$registro.key' foi lançada em $registro.value");
}
```

### While
O que esta dentro de um While sera executado enquanto ela fizer parte do escopo da condição, quando parar de seguir a condição parara de repetir.

```dart
String password = "BatatinhaFrita123";

while(password =! "BatatinhaFrita123"){
    print("Senha Incorreta");
}

print("Acesso Permitido");
```
Assim como no for podemos colocar um limitador/contador
```dart
import 'dart:io';

void main() {
  print("Informe sua senha");
  String senhaCorreta = "BatatinhaFrita123";
  String password = stdin.readLineSync().toString();
  int i = 0;
  print(password);
  while (password != senhaCorreta && i < 3) {
    print("Senha Incorreta ! Você tem ${3 - i} tentativas\nDigite Novamente");
    password = stdin.readLineSync().toString();
    i++;
  }
  ;

  if (i >= 3) {
    print("TENTATIVAS ESGOTADAS");
  } else {
    print("ACESSO PERMITIDO");
  }
}
```