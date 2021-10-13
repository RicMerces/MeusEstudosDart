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


