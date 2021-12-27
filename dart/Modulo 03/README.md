### Funções
Um bloco de codigo que possibilita você usa-lo outras sem ter q repetir exatamente os mesmos comandos apenas referenciando com seu nome 

NomeDaFuncao (parametros);

**main()**
A função main é onde ocorrera o codigo principal 


Exemplo : 

```dart

import 'dart:io';

void main(){
    int x = 7;
    int y = 8;
    somarNumeros(x, y); 
    subtrairNumeros(x,y);
}

void somarNumeros(valorX, varlorY){
    valorX + valorY;
}

void subtrairNumeros(valorX, varlorY){
    valorX - valorY;
}

```
Nesse exemplo não um retorno de valor, pois usamos o tipo **void** para as funções chamadas na main.

Mas para que serve o *retorno* ? 
O retorno armazena o valor que esta sendo retornado na Função quando ela é chamada.

Na **void** apenas ocorre um print da ocasião interna mas não armazena o valor.

```dart

void main(){
    realizarSoma(1, 2);
}

int realizarSoma (int v1, int v2){
    int soma = v1 + v2;
    return soma;
}
````

#### Parametros Opcionnais

```dart
void main(){
    rodar(x , y);
}

int rodar ([int valor], int valory){

}
```


#### Parametros Nomeados
```dart
void main(){
    rodar(y);
}

int rodar (int x = 10, int y){

}
```

#### Funções em variaveis

```dart

main(){

    int a = 2;
    int soma(int a, int b){
        return a + b;
    }

    //Tipo nome = valor;
    int function(int,int) soma1 = somaFn;
    print(soma1(soma1(20,313)));

}

```

#### Funções anonimas 
```dart 

main(){
    int Function(int, int) soma2 = (x,y){
        return x + y;
    }
    print(soma2(20,313)));
}
```

#### Funções arrow =>
```dart

main(){
    var adicao = (int a, int b){
        return a + b;
    };

    print(adicao(4, 19));

    var subtracao = (int a, int b) => a - b;
    print(subtracao(4, 19));

    var divisao = (int a, int b) => {
        return a / b;
    }
    print(divisao(4,2) is set); //True
}

```

#### Funções passadas como parametro

```dart 

import 'dart:math';

void executar(Function fnPar, Function fnImpart){
    Random().nextInt(10) % 2 == 0 ? fnPar() : fnImpar();
}

main(){
    var minhaFnPar = () => print('VALOR É PAR');
    var minhaFnImpar = () => print('VALOR IMPAR');

    executar(fnImpar: minhaFnImpar, fnPar: minhaFnPar)
}