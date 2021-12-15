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