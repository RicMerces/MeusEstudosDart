# Orientação a Objetos

Como criamos classes ? 

```dart 
class DataSimples{
    //Atributos
    int dia;
    int mes;
    int ano;
}

main(){

    //Instanciando a classe
    var dataAniversario = new DataSimples();
    dataAniversario.dia = 7;
    dataAniversario.mes = 3;
    dataAniversario.ano = 2002;

    print("${dataAniversario.dia} / ${dataAniversario.mes} / ${dataAniversario.ano}");


    Data dataCompra = Data();
    dataCompra.dia = 7;
    dataCompra.mes = 3;
    dataCompra.ano = 2002;
     
    print("${dataCompra.dia} / ${dataCompra.mes} / ${dataCompra.ano}");

}
```
É o molde onde os objetos serão estruturados e consequentemente gerarão projetos, uma associação simples seria uma "Planta de uma casa" que caso outra pessoa com material e terreno disponivel consegue replicar a mesma casa em outro lugar.

Os atributos são ferramentas onde criamos tipos dentro de uma classe onde, podemos reutilizar em outra ocasião para modelar os dados.


### Metodos dentro das classes
Para evitar grandes interpolações e repetições cansativas, podemos usar a ferramenta de funções dentro de uma classe : 

```dart 
class DataSimples{
    //Atributos
    int dia;
    int mes;
    int ano;

    //Metodos
    String obterFormatacao(){
        return ("$dia / $mes / $ano");
    }
    
    String toString(){
        return 'O dia $obterFormatacao !'
    }
}

main(){

    var dataAniversario = new DataSimples();
    dataAniversario.dia = 7;
    dataAniversario.mes = 3;
    dataAniversario.ano = 2002;

    Data dataCompra = Data();
    dataCompra.dia = 7;
    dataCompra.mes = 3;
    dataCompra.ano = 2002;
     
    String d1 = dataAniversario.obterFormatacao();
    String d2 = dataCompra.obterFormatacao();

    print("$d1\n$d2");

}
```
O toString converte os prints em Strings automaticamente 

### Construtores

Contrutor Padrão
```dart
    var dataAniversario = new Data();
```

Construtor com Parametro

```dart
    class data{
        int dia;
        int mes;
        int ano;

        Data(int diaIni, int mesIni, int anoIni){
            dia = diaIni;
            mes = mesIni;
            ano = anoIni;
        }
    }

    main(){
        var dataAniversario = new Data(7,3,2002);
        
        //Setando de forma explicita
        dataCompra.dia = 7;
        dataCompra.mes = 3;
        dataCompra.ano = 2002;  
    }

```
Construtor usando o This

```dart
    Data(int dia, int mes, int ano){
            this.dia = dia;
            this.mes = mes;
            this.ano = ano;
        }
```

Construtor simples
```dart
    Data(this.dia, this.mes, this.ano);
```

Construtores Opcionais
```dart
    Data(this.dia,[ this.mes, this.ano]);
```

Construtores Nomeados
```dart
    Data.com({this.dia = 1, this.mes = 1, this.ano = 1970});

    //Em outra classe
    print(Data.com(ano: 2022));
```

Construtores Nomeados e parametros posicionais
```dart
    Data.ultimoDiaDoAno(this.ano){
        dia = 31;
        dia = 12;
    }     
```

### Import
Criando duas classes na mesma pasta temos como importar os valores e funções de uma classe para a outra : 

**Classe main**
```dart
    //Classe Main
    import './pessoa.dart';
    main(){
        var p1 = Pessoa();
        p1.nome = 'Haroldo';

        print('O nome da pessoa é ${p1.nome}.');
    }
```

**Classe pessoa**
```dart
    String nome;
```

Se for importar de outra pasta use './nomedapasta/nomedaclasse'.