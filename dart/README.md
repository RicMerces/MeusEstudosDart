<h1 align="center"><img src="https://camo.githubusercontent.com/831fcb3aa1e35685a351128ada1c6555843bc0220020b74fbb1a50f7b91b077f/68747470733a2f2f6477676c6f676f2e636f6d2f77702d636f6e74656e742f75706c6f6164732f323031382f30332f446172745f6c6f676f2e706e67"  height="80px" > DART </h1> 

### Olá Mundo !
````dart
print("Ola Mundo !");
````
Pronto Você esta libertado ! 


### Variaveis
````dart
int inteiro = 10;
double decimal = 2.5;
String nome = "Ricardo Oliveira";
var Variavel = "Random";
````
Para descobrir qual o tipo  de uma varivel var temos o comando **variavel.runtimeType**

Atualmente adicionaram um mecanismo de atribuir valores input a variaveis assim como funciona o **scanf** do C

```dart
import 'dart:io';

main(){
    String? teste = stdin.realLineSync();
}
```
Nesse caso quando informamos uma interrogação o tipo sera atribuido depois de digitado o input, da mesma forma funciona se usarmos o **stdin.realLineSync()!** .

```dart
import 'dart:io';

main(){
    String teste = stdin.realLineSync()!;
}
```



### Constantes
As Constantes usamos para atribuir valores que vão se matendo, podendo ser uma constante **Inicial ou Final** podendo ser atribuidos a variaveis ou não 

```dart
import 'dart:io';

main() {
  //Area da circuferencia = PI * (r * r)
  print("Informe um valor de raio para calcular area da circuferencia");
  var valorRaio = stdin.readLineSync();
  double raio = double.parse(valorRaio!);
  final area = 3.14 * (raio * raio);
  print(area);
}
```

### Tipos Basicos
- Numeros (int | double)
- String (String)
- Booleano (bool)

```dart
int n1 = 10; //Numero inteiro
double n2 = 2.5; // Numero decimal 
String nome = 'Ricardo Olveira'; // Texto
bool x = true; // Verdadeiro ou Falso
```

#### Bom saber  #1
Quando realizamos Operacoes entre um numero int com um numero double, sem criar uma variavel para atribuir as respostas
```dart
int x = 10;
double y = 3.9;
print(x + y);
```
O resultado sera 13.9, no caso um valor double, isso pois o double pode ter valores int e double logo é mais globalizado e por isso converte automaticamente.

##### Conversão

*Converter um numero negativo em positivo* 
```dart
int valor = -50;
print(valor + 60); // Resultado é 10
print(valor.abs() + 60); //Resultado é 110

double valor02 = (-50.10).abs();
double valor03 = -50.10.abs();
print(valor02 + 10); // 60.10
print(valor03 + 10); // -41.90
```
É bom lembrar que quando colocamos uma variavel ela automaticamente numerica ela ja entra em parenteses por isso o ABS funciona porem quando colocamos um numero negativo direto sem parenteses não funciona como no caso do **valor03**

*Converter uma String em valor numerico*


Existem varias possibilidades de conversão de String para Numero bem semelhante ao que fazemos no C#, Sintaxe quase igual.

```dart
double n1 = double.parse("12.3232");
int n2 = int.parse("12");

String numero = "34";
double n3 = double.parse(numero);
```

*Converter String para Upper/Lower case*

Assim como fazemos em quase 90% das linguagens incluindo até o CSS que nem é de programação, podemos converter valores que estão maiusculas em minusculas e vice versa simples apenas usar o **toUpperCase()** para converter em Maiusculas e **toLowerCase()** para converter em Minusculas.

```dart
void main() {
  String string01 = "salve salve familia";
  String string02 = "SALVE SALVE FAMILIA";
  print("${string01} Minusculo para ${string01.toUpperCase()} Maiusculo");
  print("${string02} Maiusculo para ${string02.toLowerCase()} Minusculo");
}
```
Funcionando até para variaveis que por ventura o usuario va informar os valores, caso os valores sejam String eles vão converter corretamente 

```dart
 print("Escreva alguma frase");
  String teste = stdin.readLineSync()!;

  print("${teste.toLowerCase()} Minusculo");
  print("${teste.toUpperCase()} Minusculo");
```

### Listas
Uma sequencia de valores atribuidos a um meio em comum, as Listas conseguem diversos valores meio que como atributos.

```dart
main() {
  List aprovados = ['Ana', 'Carlos', 'João', 'Antonio', 'Jean'];
  print(aprovados is List); //Booleano para saber se esse valor é um lista
  print(aprovados); //Valores internos a lista
  print(aprovados.elementAt(2)); //Qual o terceiro elemento da lista levando em consideracao que o primeiro é sempre zero
  print(aprovados[1]); // nesse caso ele oberva o indice o que esta naquela posicao
  print(aprovados.length); //Quantidades de itens dentro da lista
}
```

### Map
No map definimos uma sequencia de valores, que contem um valor chave e um valor secundario 

```dart
Map telefones = {
    'Ricardo': '+55 71 9999-9999',
    'Arnaldo': '+55 11 9999-9999',
    'Afonso': '+00 9133390-91313',
    'Ricardo': '+55 9988340-3244'
  };
  print(telefones is Map); //É um map ?
  print(telefones); //Vai imprimir tanto a chave quantos os valores 
  print(telefones.length); //Tamanho nesse caso so três 
  print(telefones.values); //Imprimir apenas os valores
  print(telefones.keys); // Imprimir apenas as chaves 
  print(telefones.entries); //Mapeamento para percorrer fors
```

### Set
Set é um conjunto de valores não indexados ou seja não para dizer qual a posição de cada valor
```dart
var times = {'Vasco', 'Santos', 'Bahia', 'Corinthians'};
  print(times);
  print(times is Set);
  print(times.length);
  times.add('Flamengo');
  times.add('Flamengo');
  times.add('Flamengo');
  print(times.length);
  print(times.first);
  print(times.last);
  print(times);
```
Quando usamos o **var** Ele basicamente define automaticamente o tipo padrão do Set e acaba não permitindo outros tipos, podemos tambem antes como padrão o tipo do Set que seria mais ou menos:
```dart
Set<String> conjunto = {'a', 'b', 'c'};
```
Podemos tambem liberar todos os tipos que no caso seria usando apenas o Set diretamente na hora da definição

```dart
Set times = {'Vasco', 'Santos', 'Bahia', 'Corinthians'};
  print(times);
  print(times is Set);
  print(times.length);
  times.add(123);
  times.add('Flamengo');
  times.add('Flamengo');
  times.add('Flamengo');
  times.add(10 + 10);
  print(times.length);
  print(times.first);
  print(times.last);
  print(times);
```











