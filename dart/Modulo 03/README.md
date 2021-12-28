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

    executar(fnImpar: minhaFnImpar, fnPar: minhaFnPar);
}
```

#### Funções Retornando outras Funções
```
funcao(p1,p2){
     //10 -> p1
    sentenca #01
    sentenca #02
    sentenca #03

    
    // 1s -> p2
    sentennca #04
    senntenca #05
  
}

    funcao(3, 17)
    funcao(3, 18)
    funcao(3, 19)
```

##### para otimizar
```
fucaoFora(p1){
    //10 -> p1
    sentenca #01
    sentenca #02
    sentenca #03

    return(p2){
        // 1s -> p2
        sentennca #04
        senntenca #05
    }
}

var funcaoForaComParam3 = fucaoFora(3) 
funcaoForaComParam3(17)
funcaoForaComParam3(18)
funcaoForaComParam3(19)
```
##### em dart

```dart
int Function(int) somaParcial(int a){
    int c = 0;
    return (int b){
        return a + b + c;
    };
}
main(){
    print(somaParcial(2)(10));

    var somaCom10 = somaParcial(10);

    print(somaCom10(3));
    print(somaCom10(7));
    print(somaCom10(10));
}
```
#### Funções Generics

```dart
Object segundoElemenntoV1(List lista){
    return lista.length >= 2 ? lista[1] : null;
}

Object segundoElemenntoV2<E>(List<E> lista){
    return lista.length >= 2 ? lista[1] : null;
}


main(){
    var lista = [3,6,7,12,45,78,1];

    print(segundoElementoV1(lista));

    int segundoElemento = segundoElementoV2<int>(lista);
    print(segundoElemento);
}

```

#### Filter


Abordagem Procedural
```dart
main(){
    var notas = [8.2, 7.1, 7.8, 3.9, 1.0,5.1];

    var notasBoas = [];

    for(var nota in notas){
        if(nota >= 7){
            notasBoas.add(nota); 
        }
    }
    print(notasBoas);
}

```

Abordagem Funcional
```dart 
main(){
    
    var notas = [8.2, 7.1, 7.8, 3.9, 1.0,5.1];

    bool Function(double) notasBoasFn = (double nota) => nota >= 7;
    bool Function(double) notasMuitoBoasFn = (double nota) => nota >= 8.8;

    var notasBoas = notas.where(notasBoasFn);
    var notasMuitoBoas = notas.where(notasMuitoBoasFn);
    print(notas);
    print(notasBoas);
    print(notasMuitoBoas);

}
```

Função Filtrar

```dart
List<E> filtrar<E>(List<E> lista, bool Function(E) fn){
    List<E> listaFiltrada = [];

    for(E elemento in lista){
        if(fn(elemento in lista)){
            if(fnn(elemento)){
                listaFiltrada.add(elemento);
            }
        }
    }
    return listaFiltrada;
} 

main(){
    var notas = [8.8, 7.3,9.0,3.0];
    var boasNotasFn = (double nota) => nota >= 8.0;

    var somenteNotasBoas = filtrar<double>(notas, boasNotasFn);
    print(somenteNotasBoas);
}
```