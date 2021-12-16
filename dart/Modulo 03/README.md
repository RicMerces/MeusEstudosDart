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
