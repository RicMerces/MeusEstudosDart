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


