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




