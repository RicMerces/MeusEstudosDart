
Para iniciar é importante conhecer algumas ferramentas uteis para programar com o **Flutter**

<a href="https://docs.flutter.dev/development/ui/widgets"><b> Documentação </b></a>


### Estrutura de pastas 


- **.dart_tool** - Pasta auxiliar
- **.idea** - Pasta de IDE
- **Android** - Arquivos especificos da Plataforma
- **iOS** - Arquivos especificos da Plataforma 
- **lib** - Codigo em Dart (Pasta mais importante)
- **test** - Arquivos para Test
- **web** - Arquivos especificos da Plataforma 


### Arquivos Importantes

- **Analysis_Options.yaml** - Informações, Regras e Analises Estatica do codigo 

- **Pubspec.yaml** - Comandos e Informações base do projeto (Assets, padrões, semelhante com o o header do html)

Pub get para modificações nas connfigurações do projeto




### Estrutura do Flutter

Esqueleto é basicamente assim
```
column
    text
    text
    row
        button
            text
        button
            text
    /row
/column
```


Codigo inicial 

```dart
void main() {
  runApp(
    MaterialApp(
      home: Container(
        color: Colors.yellow,
        child: Center(
          child: Text('Ola Mundo !'),
        ),
      ),
    ),
  );
}

```

Como fazer o HotReload funcionar ? 

```dart 
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

@override
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Container(
        color: Colors.yellow,
        child: Center(
          child: Text('Hello World !'),
        ),
      ),
    );
  }
}
```

### Tipos de Widgets

#### Entrada e saida (Visíveis) {
    RaisedButton()
    Text(),
    Card(),
    ...
**}**

#### Layout e Controle (Invisíveis) {
    Column(),
    Row(),
    ListView(),
    ...
**}**


**Container()**

- Desenha a tela o que o usuario ver
- Prover a estrutura do app e controla como os widgets visiveis são desenhados na tela


#### Column para organizar Widgets
```dart
import 'package:flutter/material.dart';

void main() {
  runApp(PerguntaApp());
}

class PerguntaApp extends StatelessWidget {
  @override
  Widget build(BuildContext) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Perguntas'),
          backgroundColor: Colors.purple,
        ),
        body: Column(
          children: <Widgets> [
            Text('Ola Flutter'),
            Text('Salve salve'),
            Text('Hello'),
          ],
        ),
      ),
    );
  }
}

```

Button 
```dart
body: Column(
  children: <Widgets> [
    Text(Perguntas[0]),
    RaisedButton(
      child: Text('Respostas 1'),
      onPressed: null,
    ),
  ]
)

```

Funções anonimas 
```dart
import 'package:flutter/material.dart';

void main() {
  runApp(PerguntaApp());
}

class PerguntaApp extends StatelessWidget {
  void responder() {
    print("Bahia");
  }

  @override
  Widget build(BuildContext) {
    final List<String> perguntas = [
      'Qual é a sua cor favorita ?',
      'Qual é a seu animal favorito ?'
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Perguntas'),
          backgroundColor: Colors.purple,
        ),
        body: Column(
          children: [
            Text(perguntas[0]),
            RaisedButton(
              child: Text('Resposta 1'),
              onPressed: responder,
            ),
            RaisedButton(
              child: Text('Resposta 2'),
              onPressed: () => print('Vasco'),
            ),
            RaisedButton(
              child: Text('Resposta 3'),
              onPressed: () {
                print('Santos');
              },
            ),
          ],
        ),
      ),
    );
  }
}
```

### ESTADO
No geral estado são dados e informações usados por sua app

#### Estados app
usuarios autenticado

produtos carregados

#### Estado do Widget
Valor de campo de entrada

O spinner de carregamento esta sendo exibido?


### Statless VS Stateful

#### Stateless

Parametros(Dados de entrada) => Widget metodo build => Renderiza a UI 

Quando mudados os parametros é preciso recarregar para ver as alterações e renderizar novamente a tela

#### Stateful

Parametros(Dados de entrada) => Widget metodo build com estado interno que causa uma renderização => Renderiza a UI 

Quado os parametros ou estado interno forem atualizados havera uma nova renderização da interface

### Container
Lembra bastante com o que trabalhamos com o **HTML** fazendo pequenos paralelos.



#### Child
Conteudo
```
#### Padding
Espaçamento interno do conteudo

#### Border
Borda do conteudo dado o limite do padding

#### Margin
Divisão com outros conteudos externos

#### Container
É a região onde fica por completo o conteudo, 
junto com todas as propriedades
```
<br>
<br>
<br>
<br>
<br>

# Amplamente o que é o Flutter

### Widgdets e Material Design 

São componentes para montar a estrutura das telas do Flutter

### Widgets :

#### Container 
  Estrutura para colocar elementos dentro dele

#### Row
  Linhas para colocar componentes de interface um do lado do outro

#### Column 
  Colunas para colocar componentes de interdface um embaixo do outro

#### Scaffold
Gaveta de elementos

#### Image
#### Text
#### Icon
#### Button
#### AppBar


### Assets
Elementos externos implantados no codigo : Imagens, links etc...

### Material App

Biblioteca de Padrões de Design para o Flutter criada pelo Google

# Layout 

- Widgets importantes para compor a tela 
    - MaterialApp 
    - Scaffold
    - AppBar
    - Card

Esses Widgets sao importantes se olhados em um contexto mais amplo eles são mais generalistas, porem importantes para que comece a estrutura do Layout.

- Temas 
    - Themes 
    - ThemesData

Interface Kit, padrão de Design e Design system que basicamente torna componentes visuais padrões para o App como :  cores, iconografica, identidade visual, animações, espaçamento, fontes... Replicando onde formos criando componentes e Widgets dentro do Projeto

ush- Interação do Usuario
    - Callbacks e GestureDetector
    - ElevatedButton, FloatingActionButton, IconButton, TextButton, OutlinedButton...


- Indicadores de Progresso
    - Circular e Linear ProgressIndicator


## Material App

- Widget de conveniencia que compõe varios Widgets necessarios para um app


- **MaterialApp** -> Material Design (Google)
- **CupertinoApp** -> Human Interface (Apple)
-  Construidos em cima do **WidgetsApp**

- Onde definimos grandes partes da navegação e internacionalização do App

O MaterialApp é a raiz da arvore de Widgets que compõe o Aplicativo para gerar completamente as funcionalidades e componentes de Layout. 
Outro ponto importante que é bom tratar como falamos anteriormente é que dentro do Material temos a configuraçao dos temas do app.

### Temas

- Theme (Widget)
     - Aplica o tema para os Widgets na sua arvore
     - Possui os parametros de child e **data**
     - Possibilita achar o tema com 0 "0f(context)"

- ThemeData  (Não é um Widget)
    - Onde o Tema é configurado

- MaterialApp engloba um Theme 
    - Podemos configurar um ThemeData para o 'Light Mode' e o 'Dark Mode'


### ThemeData 
- Brightness -> Contraste de cores
    - Light -> texto escuro com fundo claro
    - Dark -> texto claro com fundo escuro

- colorScheme -> 12 cores usadas no app
    - Progresso de migração
    - Definida pelo Material Design
    
- PrimarySwatch -> compõe o colorScheme
    - Tipo MaterialColor, um swatch/paleta tem 10 cores: cor original ++ 9 tons do [50] ao [900]


### Scaffold

- Widget  que implementa a estrtura basica de layout do Material Design
    - Scaffold -> Andaime

- Estrtura para sustentar todo o layout :  
    - **appBar** -> Barra de navegação e informaçao inicial que podera ser ou não fixa em suas telas.
    - **body** -> Conteudo principal da tela, onde colocamos todos os componentes e Widgets para interagir e gerar estruturas ativas ou não na interface.
    - **bottom Navigation** -> Menu de navegação com icones e textos que possibilitam a navegação entre outras telas.



- AppBar

Espaço onde podemos ter outros Widgets, podendo ter diversas configurações porem como padrão temos :

    - Leading -> ícone
    - title -> texto
    - actions -> lista de ícones
    - bottom -> abas

### Card

O card nada mais é um painel com bordas arredondadas e elevaçao, contendo uma sombra abaixo do card.

- É usado principalmente para mostrar informações e realizar ações.

- Pode costumizar para diversas situaçoes e estilos com background, fonte...

- Widget simples porem muito versatil

- Possibilita combinaçao de varios cards pode gerar o layout de um app inteiro (Componente coringa)


### Callback
- É usado apenas depois de um evento, usado para determinar funçoes que são executadas apos um evento.

- Função passada como argumento
    - Toda função anonima é um callback
    - Um callback pode ser uma função nomeada


- Exemplo: 
  - Usuario tocar em um botao e contar quantos cliques ele deu clique++


- No Flutter diversos Widgets esperam callbacks como parametro.
Para facilitar a leitura, o flutter faz o uso de **typedefs**

- Um typedef nada mais é que um apelido, um jeito mais simples de se referir a um tipo.

```dart
typedef intList = List<int>;
IntList myList = [1,2,3];

typedef VoidCallback = void Function();
void function(VoidCallback argument) {}
```
#### Alguns Callbacks no flutter
- VoidCallback: Funçao sem argumeto e que nao tem retorno
- ValueChanged: Funçao com argumento e que nao possui retorno
- ValueGetter: Funçao sem argumento e que possui retorno

```dart
typedef VoidCallback = void Function();
typedef ValueChanged<T> = void Function(T value);
typedef VoidCallback<T> = T Function();
```
_Onde **T** é um tipo qualquer_

#### Passo a passo
1. MyWidget espera um callback como parametro
2. Callback é criado informando o que deve ser executado quando
for chamado
3. Widget é criado
4. Depois de um tempo, ocorre uma interação
5. O Callback é chamado e o seu bloco de codigo é executado.

##### Estado de aplicativo
- Sendo inicializado
- Tela carregada
- Interação
- Msg exibida

#### Mais sobre Callback

- Voce pode criar seu callback usando typedef ou deefinindo no 
argumento da função que tipo de callback deve ser passado

- Mesmo possuindo beneficios, callbacks devem ser usados com cautela, pois podem criar grandes niveis de complexidade.
    - Exercicio mental : um callback dentro de outro callback é chamado numa funçao

### Gesture Detector

- Widget que adicioa uma detecçao de gestos em qualquer parte da telas
    - Basta inseri-lo no topo de uma ramificaçao

- Detalhes importantes : 
    - Um dos Widgets que mais possui callbacks
    - Nao possui animação ao toque
    - Se não houver um child, o gesture se expande para o tamanho livre na tela
    
## Interação direta com o usuario

### ElevatedButton

- Botao usado para adicionar dimensao ao layout, com cor e elevação sombreada

- Remendações do MaterialDesign 
    - Usar em momentos que é necessario chamar a atenção do usuario
    - Evitar o uso em componentes que ja possuem elevação como o card

- Se onPressed ou onLongPress não forem passados, o botao é desabilitado

### FloatingActionButton
- Botao circular que flutua sobre o layout 
    - Geralmente usado para ações primarias no app: criar, compartilhar, navegar...
    - Geralmente fica fixo em uma determinada posição ocupando um espaço.

- Recomendações do MaterialDesign
    - Não usar mais que um FAB por layout
    - O estado desabilitado deve ser evitado

- Pode ser criado no Scaffold
    - Localixaçao pode ser alterada com um FloatingActionButtonLocation

### IconButton
Botao que possui um icone no meio e pode ter uma cor de fundo 

- Geralmente usado na AppBar ou Barra de navegação
- Para criar um IconButton é obrigatorio criar um Widget Icon que determina o Icone 
- Recomendações do MaterialDesign
    - Os Icones devem seguir um mesmo padrao
        - O Flutter disponibiliza icones do material atraves da classe Icons


### TextButton
Botão onde é exibido apenas um texto clicavel

- Usado em açoes auxiliares (Card)

- Recomendações do MaterialDesign
    - Não usar em locais onnde o usuario possa confudir o TextButton como conteudo
    - Adicionar padding ou agrupar com outros TextButtons para facilitar a visualização

### OutlinedButton
Botão com texto e borda delineada

- Possuem ações importantes, mas que não são primarias dentro do aplicativo

- Recomendação do Material Design 
    - Pode substituir um ElevatedButton quando uma ação deixa de ser primaria
    - Ou quadno é necessaria dar uma enfase as açoes do textButton.

- Pode ser usado com o estado desabilitado


### Singular e Linear ProgressIndicator
Widgets que indicam o progresso 
- Circular
- Linear

- Podem ser usados de dois modos:
    - Determinando - value entre 0.0 e 1.0
        - Indica a evolluçao, andamento (Download)

    - Inderteminado - value é nulo
        - Indica pro usuario o carregamento porem não mostra um valor especifico (Chamada de API)



# Multiplas Abas
#### Multiplas abas: 
    - BottomNavigationBar + BottomAppBar
    - TabBar

#### Controller para estados complexos (abas):
    - PageController e TabController


#### Associar conteudo a uma aba
    - PageView e TabBarView


#### Modelos e Layout para uma aba dinamica


### BottomNavigationBar

- Widget usado na parte inferior da tela para seleçao entre diferentes abas
  - Pode ser criado no Scaffold
  - Nao deve ter menos de 3 ou mais de 5 abas
  - Possui dois tipos de operação: Fixed e shifting

- Cada item na barra pode ter um texto, icone
ou ambos num formato de uma coluna
  - Itens podem ser personalizados a depender do estado de seleção

### BottomAppBar
- Widget inspitado numa AppBar, so que na parte inferior da tela
  - Não possui a maioria das funcionalidades da appbar(bottom, leading, actions)
  - Não possui o objetivo de gerenciar abas

- Um Floating App Bar pode ser embutido usando ou não um notch (entalhe ou corte)

- BottomAppBar pode ser combinada com a BottomNavigationBar


# Acesso ao estado

Como usar o estado de Widgets filhos? 
- Como nos não temos referencia dos Widgets, se torna complexo acessar o estado.
- Até existem formas de fazer (GlobalKey), mas devemos evitar, pois podem levar a uma quebra de padrão (Anti-pattern) e ter impactos na performace do app.

- Solução: dar controle ao Widget pai sobre o estado do Widget filho usando um Controller 

### Controller : 
- Faz parte de um padrão de arquitetura de projeto introduzido em 1970 chamado de MVC (Model, view e controller)

- Muito usado para desktop/web e que se expandiu para o mundo mobile

- O controller é responsavel por formatar, controlar, organizar o fluxo de dados.
  - Onde concentramos a logica de negocio
  - (Condicionais, gerenciar estados...)

### Controller no flutter
- Nem todo Widget possui um Controller, ja que a gente sempre pode mudar o estado da nossa arvore usando o setState
- Alguns Widgets possuem estados complexos e que precisariam de muitos callbacks para habilitar o controle ou utilização
  - O controller existe, para facilitar e abstrair o uso de um estado que seja complexo.

### Cuide do seu Controller
- Um Controller geralmente é criado dentro do State de um StatefulWidget pai e passado pelo construtor para um Widget filho
- Não devemos usar os Controllers em StatelessWidgets por serem objetos grandes complexos e de **vida longa**
  - Precisam ser "Mortos" no metodo **dispose()**
  - Caso esqueçamos de finalizar/matar um controller, podemos ter problemas graves de memoria, como um **memory leak**

### Onde encontramos controller 
- Nao existe uma implementação abstrata de um controller no flutter, cada Widget vai criar o seu, de acordo com a necessidade

- Um ponto em comum de varios controllers é herdar da classe **ChangeNotifier**
  - Provê uma notificação para ouvintes quanndo acontece uma mudança
  - Podemos passar um callback para ser executado quanndo a notificicação chega

```dart
  String count = '0';

  void initState(){
    super.initState();
    Widget.controller.addListener((){
      count = widget.controller.count.toString();
    });
  }

  class CounterController extends ChangeNotifier{
    int _counter = 0;
    int get count => _counter;

    void increment(){
      _counter++;
      notifyListerners();
    }
  }
```
### PageView

Widget usado para exibir multiplas paginas podendo ser usado como carrossel escrolavel para mudar de tela.

- Possui um PageController para controlar qual pagina esta sendo exibida 
  - Permite a navegaçao entre paginas
  - Voce pode usar ou nao animações

### Duration
Classe importante onde é colocado um timer com um periodo de tempo determinado 
  - Muito usado pelo Flutter
  - É de facil criaçao e possui muitas utilidades

### Curve
É o controle do percurso de uma animação dentro do duration para que se faça alguma açao
  - Dificilmente criamos um objeto diretamente 
  - Usamod a classe **Curves** que facilita a criação a partir das curvas matematicas famosas.

### TabBar
Mais uma maneira de navegar entre abas/paginas funcionando com o mesmo intuito da bottom app bar porem se localizando na app bar 

- Widget que exibe abas horizontais
  - Criada dentro de AppBar, no Bottom dela
  - Possui um indicador para a aba ativa, que pode facilmente ser costumizado

- O MaterialDesign recomenda cautela ao usar uma TabBar com uma BottomNavigationBar 
  - TabBar -> Abas de assunto em comum
  - BottomNavigationBar -> Abas de nivel superior, sem conexão entre os itens

### TabController 
Que assim como na BNB, porem é obrigatorio para funcionar, é preciso de um controller para realizar a seleção de abas quanto a animação entre elas 
  - Controla tanto a seleção entre abas quanto a animação entre elas
     - Usa tambem o ChangeNotifier
     - TabBar não funciona sem um controller

  - É um controller de uso complexo(Animação)
    - Então, para facilitar a maioria dos casos, nos podemos usar o DefaultTabController
      - Um Widget que precisa somente do numero de abas e o flutter conecta a TabBar e o Controller automaticamente


### TabBarView
- Widget geralmente usado para conectar a tab selecionada numa tabbar com uma aba
  - Stateful Widget que retorna um PageView

- Usa um TabController, mas tambem se conecta com um DefaultTabController

- Precisa receber a mesma quantidade de abas que foi definido na TabBar

### Model
A maior parte das arquiteturas ou padrões de projeto que usam o termo Model, (MVC, MVVM, MVP...)

- Em cada utilização o Model vai ter sua particularidade, mas de forma ampla o model é a representação de um dado
  - Traduzindo: uma classe

- Uma aplicação direta no Flutter é a utilização de Modelos como estado!

### Modelos como estados 
- Utilizando modelos, nos ganhamos a capacidade de reutilizar a nossa para diferentes conteudos: 

```dart 
final name = 'Casimiro';
final city = 'Rio de Janeiro';
```
usando o model
```dart
class Person{
  const Person(this.name, this.city);
  final String name;
  final String city;
}

final Person person;

String name = person.name;
String city = person.city;
```

### TabBarView 
- Widget geralmente usado para conectar a tab selecionada numa TabBar com uma aba 
  - Stateful Widget que retorna um PageView


# Listas

- Builder e BuldContext
- Listas usando ListView e GridView 
  - Itens (Celulas): ListTile e GridTile 

- Widgets que compõe o layout de um item:
  - CircleAvatar, Divider, GridTileBar

- Conceitos de ViewModel e Closure

- Interação com uma Lista


### Builder
- Callback (Forma mais comum)
- Widget

- Builder nada mais é uma função que retorna um widget


```dart
typedef WidgetBuilder = Widget Function(BuildContext context);
```
- Existe tambem o Builder Widget
  - Sua função é executar em seu metodo build o callback WidgetBuilder


```dart
class Builder extends Stateless {
    const Builder({
      Key? key,
      required this.builder,
      }) : super(key: key);
    
    final WidgetBuilder builder;

    @override
    Widget build(BuildContext context) => builder(context);
}
```

### ListView

- Uma lista de Widgets, com scroll, alinhados linearmente
- Os filhos ocupam o tamanho horizontal da lista
- Usado para pequenas listas
- Os filhos precisam ser tratados individualmentes

### ListView.builder

- Uma lista DINAMICA de widgets, com scroll,, allinhados linearmente.

- Filhos são criados sobre demandas

- Widgets que não aparecem na tela são destruidos e reutilizados automaticamentes




### ListTile

Basicamente uma estilização padronizada de elementos em listas
- Widget que implementa o recomendado pelo Material Design um item numa lista 
  - Muitas vezes usado como Card (Elevação)

- Caracteristicas principais: 
   - Até três linhas de texto (Title and subtitle)
      - Para 3 linhas deve-se ativar o isThreeLine
   - Leading: icone ou imagem no inicio (estatico)
   - Dense: compactar o tamanho do item
   - onTap: Interação do usuario com itens


### CircleAvatar

- Widget usado para representar um usuario geralmente com uma imagem ou as iniciais do nome com a cor de fundo

- Apesar do CircleAvatar não exigir nenhum parametro, essa é a logica de carregamento: 
  - ForegroundImage -> BackgroundImage -> BackgroundColor
  - Então mesmo que não seja usado é sempre recomendado passar um bg color.

  
### ViewModel
 - Faz parte de um padrão de projeto/arquitetura chamado MVVM
   - Model View ViewModel
    - Muito usado pela Microsoft e pela Google

 - View Model é um modelo responsavel por expor dados (estados) que sejam facilmente apresentados pela View (UI)
    - Responsavel pela Logica de exibição
    - Faz o papel de mediador, convertendo dados.


### Fluxo da informação 

- Sem ViewModel:
  - Fonte de dados (Modelo e estado) com acesso direto a View (Responsavel por tratar as informações na tela)

- Adicionando um ViewModel
  - Fonte de dados recebe a view model (onde processa e expõe os estados que devem ser exibidos) e a View exibe que o ViewModel Expõe


### ViewModel
- Um dos maiores beneficios de usar uma ViewModel é desacoplamento da logica de apresentação com a View
  - Com isso fica facil plugar e desplugar qualquer tipo de View numa viewmodel

- Ao usar ViewModels, devemos ter o cuidado de não adicionar componentes de UI(Widgets) na VM, uma vez que o objetivo é que ela exiba somente os estados
    - O trabalho de construir a UI é dos Widgets

### Closure
- Uma função anonima - Geralmente callback -  consegue 'Lembrar' de um valor acessado durante a criação, mas que foi criado num escopo externo.

1. ClosureNumber é criado
2. Botão é criado com onPressed recebendo o closureNumber = '0'
3. Novo itemBuuilder, index = 1, closureNumber é recriada
4. O callback antigo (2.) continua com closureNumber = '0'
5. Quando o usuario aperta no 1 botao, sera printado '0'

### GridView 
- Widget para criar uma lista de 2D (Grid)
  - Muito parecido com o ListView, o que muda é que podemos adicionar uma numero de eixos transversais (crossAxisCount)
  - Um GridView pode se comportar como um ListView, basta que crossAxisCount = 1.

- Os dois contrutores mais usados são :
   - .count -> Poucos itens -> children
   - .builder -> Muitos itens -> itemBuilder

### GridDelegate
  - Quando usamos o .builder precisamos criar um gridDelegate

  - Delegation é um padrão que favorece a composição sem precisar de Herança.
  - Define que um objeto use outro objeto (seu delegate) para executar uma tarefa sua
  - A Apple (iOS) usa bastante esse padrão


### GridTile
- Assim como o ListView tem o ListTile, o GridView tem o GridTile

- Mas diferente do ListTile, temos um parametro obrigatorio, o child, que preenche todos o item

- Alem disso, temos dois campos novos, o header e o footer, onde geralmente usamos o GridTileBar, onde condiguramos a maior parte do layout do item


## Text Field

- Widget muito usado, devido a sua grande variedade de recursos

- Features
  - InputDecoration
    - Filled -> Background
    - Border -> inputborder(outline)
    - LabelText -> Identificação
    - HelperText -> Guia
    - ErrorText -> Erro
    - HintText -> Exemplo
    - Icon -> Fora do TextField, no canto esquerdo
    - prefixIcon -> inicio
    - suffixIcon -> Final

  - TextEditingController controller
    - text: acesso ao texto exibido
    - clear(): limpa o textfield

  - TextInputType Keyboardtype
    - Define o tipo do teclado (ex: numerico)

  - TextInputAction 
    - Determina a açao a ser executada atraves do teclado (Geralmente next ou done)
  
  - FocusNode 
    - Permite o controle fino do foco, muito usado quando precisamos realizar um percurso personalizado

  - Flags 
    - Autofocus: Determina o foco vai ser aplicado automaticamente, mostrando o tecllado logo em seguida 
    - readOnly: Desabilita edição, mas não desabilita o campo
    - Enabled: Desabilita o campo inteiro
    - obscureText: esconde os caracteres

  - Callbacks
    - ValueChaeged<String> onChanged: 
    chamado em toda e qualquer modificação de texto

    - ValueChanged<String> onSubmitted:
    quando o usuario indica que terminou de editar o texto

  ### Alert Dialog
  - Widget para informar algo ao ususario sobre situações que exigem confirmação

  ### DatePicker
    - Widget que mostra um dialofo onde o usuario pode selecionar uma data 
      - Assim como o alertDialog

  ### CheckBox e Switch
    - Indicar confirmação de seleção

### Assicronismo
Chamadas para o futuro (joia do tempo)

- Isolate e event loop
  - base de funcionamentos do assync 

- Chamadas assicronas 
  - Resultado: Future e FutureBuilder
  - Sequencias? Stream e StreamBuilder

- Async e Await

- Exception and error


### O que é o assicronissimo

- Capacidade de executar diferentes tarefas de forma cocorrente, ou seja, ao mesmo tempo
  - Pogramação concorrente é uma caracteristica presente em todas as linguagens modernas
  - Pois os programas precisam realizar varias ações ao mesmo tempo, como realizar ações simples do front até questões que envolvem relacionamento entre banco, servidor e API.

- **Programação Sicrona**
  - Normalmente ações sicronas são bem divididas e realizadas em fila ou seja em sequencia, logo antes é necessaria uma ação ser encerrada ou diminuida a potencia para que outra seja feita. 
  - É necessario sempre evitar que uma tarefa ocupe todo o poder de processamento
  - A programação sicrona, onde cada linha de codigo é executada sequencialmente e impede que outras tarefas sejam executadas até a sua finalização.
    - Isso bloqueia o processamento pois o codigo que esta sendo executado no momento bloqueia as ações de outro que ja foi ou ira ser executado.
    - Muitas vezes isso não é um problema, porque o processamento é muito rapido

- Exemplos de processamento longo:

  - Calculos complexos (processamento de imagem, por exemplo)
  - Processamento baseado em tempo (timer, loop para contabilizar o tempo)
  - Chamadas de API

- Se essas operações fossem sicronas, o aplicativo provavelmente demoraria muito para ser executado e na maioria dos casos até realizar um "Crash", finalizar a execução forçadamente.
  - Alguns SOs chegam a fechar o aplicativo de um tempo parado (ANR - Aplication not responding - ANDROID)
  - Ou seja sempre bom usar chamadas assicronas para casos mais sufisticados para tornar o app mais fluido.


### Como o Dart lida com chamadas assicronas ? 

- O Dart por ser uma linguagem multiplataforma, se conecta aos mecanismos de cada plataforma para lidar com memoria de processamento. Uma camada que abstrai todas as diferenças (ISOLATES).


- Um isolate pe um pedaço de memoria isolado que possui um event loop
  - Podemos criar mais de um isolate
  - Não existe compartilhamento de memoria entre isolates, diferente de threads (locking), Simplifica nossa vida com uma camada de adm.

- Quando um programa ou aplicativo Dart é iniciado, tudo é executado detro de um unico isolate chamado main isolate

- Depois que o main() é executado (no flutter seria finalizar a construção da primeira tela), o event loop fica escutando por eventos e processa a cada evento numa fila em ordem de chegada.


### EventLoop e Assicronismo

1. Reaalizarmos uma chamada assicrona
  - Nesse momento o Dart "Registra" um evento para quando a chamada for completada, consiga saber para onde voltar.

2. Algum tempo passa

3. Nossa chamda pe completada, então um "Evento de conclusão" entra na fila
4. Quando chega a sua vez, o Dart executa nosso codigo que estava esperando


### Descobrindo o Futuro

- Future é uma classe que representa o resultado de um processamento assicrono 
  - Future<T>, onde o T é o resultado eseperado (Futuro), ou seja ja sabemos o resultado que precisa ser resultado para a execuç~~ão 
    - Future<int> (Referenciando o tipo)
    - Future<MyClass> (Referenciando uma classe)

  - O Future possui dois estados
    - Completed e Uncompleted

  #### Uncompleted 
  O completed é uma possibilidade que ocorre no momento que você chama um metodo que retorna um Future, ele estando incompleto

  #### Completed 
  Depois de um tempo, a chamada assicrona é completada e pode retornar entre dois possiveis resultados
  - O valor esperado (SUCESSO!)
  - Um Erro

- Escopo do Future
  - Toda vez que trabalharmos com assicronismo precisamos adicionar a palavra-chave **async**
  no escopo da chamada e retornar um **Future**
    - Costuma-se chamar esse processo de "Anotar" a função/metodos como assicrono
    - Dessa forma o Dart consegue diferenciar entre escopos sicronos e assicronos

```dart
  String mySyncFunction(){
    return 'Escopo sicrono';
  }

  Future<String> myAsyncFunction() async {
    return 'Escopo assicrono';
  }
```

Construtores do Future

```dart
//Default
Future<String>(() => 'Back to the future');

//Value
Future<int>.value(40);

//! Error
Future.error(Exception('Not Found'));

//? Delayed 
Future.deleyaed(const Duration(seconds: 1));
```
- Na maioria dos casos não sera preciso criar um Future, porem é importante entender para conseguir lidar com os possiveis estados.
  - then((T value){}): Executado quando completado com valor (sucesso)
  - catchError((error){}): executado quando completado com um erro
  - whenComplete((){}): Executado na finalização, independente de sucesso ou erro


### Lidando com o Future 
- Podemos criar cadeias de Future conforme a necessidade: 

```DART
  Future<int>.value(40)
    .then((age) ==> Future<String>(() => 'My age is $age')).then((myAge) => debugPrint(myAge));

```
- Alem de filtrar diferentes erros com test:
```
   Future.error('Now my error is a String').
   catchError((error) => debugPrint(error),
      test: (error) => error is String).catchError((error) => debugPring(error.toString()),
        test: (error) => error is int
      );
``` 


### FutureBuilder
- Widget quee se reconstroi conforme a interação com um Future
  - Não é um Widget obrigatorio
  - Parametro obrigatorio (AsyncWidgetBuilder)

```dart
  typedef AsyncWidgetBuilder<T> = Widget Function(
    BuildContext context,
    AsyncSnapshot<T> snapshot,
  )
```

- Alem do builder, temos mais 2 parametros opcionais 
  - Future: Chamada assicrona
  - initialData: usado para primeiro estado do AsyncSnapshot, ja que na maioria das vezes o future ainda esta incompleto


### AsyncSnapshot<T> snapshot
- Representa a interação mais recente entre o estado Future eo momento em que o builder foi chamado

- Quando o Future é finalizado, temos acesso ao resultado atraves da propriedade T data.

- Quando o Future é concluido com um erro, podemos usar a propriedade error para informalo ao usuario.

- Existem duas flags para verificar se os valores são diferentes de null

```dart
bool get hasData => data != null;
bool get hasError => error != null;
```

- Alem dessas flags, existe uma propriedade que indica em qual momento do ciclo de vida do future um determinado snapshot
representa: o **ConectionState**

### ConectionState
- Quando usado o FutureBuilder, o connectioState pode ser :
  - none: nenhuma chamada assicrona acontecendo no momento
  - Waiting: chamada assicrona em andamento, esperando por resposta
  - Dona: Quando a chamada assicrona for finalizada



- Podemos escutar pelas mudanças do ConectionState para construir a nossa UI, reagindo aos diferentes estados

#### Cuidados importantes
 - O ideal é que façamos a chamda no initState ou em outro objeto que obtenha a referencia a chamada assicrona, não diretamente no FutureBuilder pois pode tornar a UI mais lenta 
   - FutureBuilder  deve ser usado somente para exibir mudanças na UI 

- Outro cuidado é observar o estado a UI, se criarmos um Future que é completado antes do build finalizar, não recebemos no snapshot o resultado esperado 


### Future e Callbacks

- Fazer chamadas assicronas com Future passando callbacks pode ser algo complexo, principalmente quanto temos uma cascata de chamadas assícronas (callback hell)

- Alem disso, enteder quando os callbacks vão ser executados pode ser confuso : 
  - Fução sicrona -> chamada assicrona - > callback then
  - Quando que meu callback vai ser executado mesmo ? 

### Async e Await 
- Transforma chamadas assicronas e callbacks, em algo similar a chamadas sicronas tornando menos complexos de se compreender (usando como palavra chave **async** e **await**)

Usando apenas future sem async e await :
```dart 
void mySyncFunction() {
    Future<int>.value(40)
      .then((age) => Future<String>(() => 'My age is $age' ))
      .then((myAge) => debugPrint(myAge));
}
```
usando async e await, criando um fluxo sicrono dentro de uma função assicrona pois contem uma ordem graças ao await q so é executado apos o future
```dart 
//Funcao do tipo async torna uma função automaticamente em assicrona
Future<void> myAsyncFunction() async{
  //O await vira uma maneira de referenciar um valor 
  final age = await Future<int>.value(40);
  final myAge = await Future<String>(() => 'My age is $age' );
  debugPrint(myAge);
}
```
#### Resumo
1. Sempre precisamos adicionar o Async no escopo que desejamos usar o Await.

2. Todo codigo apos o await somente sera executado apos a finalização do future.

3. É recomendado adicionar o Future<T> no retorno da função mesmo se for void.

- Como funcionaria a equivalencia usando callbacks do Future ?
  - Usando Async/await não temos a opção de adicionar os callbacks **catchError** ou **whenComplete**.
  - Para resolver esse problema podemos adicionar o bloco **try/catch/finally**

```dart 
Future<void> main() async {
  try {
    final age = await getAge();
    debugPrint(age.toString());
  } on Exception catch (exception) {
    debugPrint(exception.toString());
  }finally {
    debugPrint('Done');
  }
}

Future<int> getAge() => throw Exception('Not found'); 
```

### Singular e Plural 

- Futures são excelentes para representar uma chamada assicrona que retorna um resultado 
  - Mas quando nos precisamos receber uma sequencia de resultados ? ou desejamos ser informados quando um dado foi alterado ?
  - Para uma sequencia de dados assicronos nos podemos usar as <**Streams**>

No caso das chamadas sicronas e assicronas tendo em mente a ordem **Tipo de chamda -> Um resultado -> sequencia** : 
$$Sicrona -> int -> List<int>$$ 
$$Assicrona -> Future<int> -> Stream<int>$$

#### Analogia simples : 
- Para ajudar na compreensão do funcionamento das Streams seria a exibição de video online (YouTube, Netflix, etc)
   - Pedaços do video são carregados com o tempo (barra de carregamento)
   - Pode acontecer algum erro no meio do carregamento, ou seja não existe uma garantia que o video sera completado.

- Uma Stream tem o mesmo principio de funcionamento : Eventos são enviados assicronamente até sai a finalização

- A classe stream possui diversos contrutores, mas são usados para casos muito especificos
   - Geralmente quando desejamos criar uma Stream, nos usamos ou um metodo que retorna uma Stream ou criamos um StreamController (mais comum)

  - Assim como no Future, teremos que lidar muito mais com Streams existentes a criação de novas Streams

#### Escutando uma Stream

- Uma Stream pode emitir diferentes eventos, que tambem são chamados de elementos: 
  - Um dado (Sucesso)
  - Um erro

- Para escutar os elementos de um Stream precisamos usar metodos listen , que registra callbacks para processamento dos elementos recebidos
  - O metodo listen retorna um objeto de StreamSubscription

- O metodo listen possui quatro parametros : 
  - Void onData(T event) : Quando um evento T é recebido
  - Void onError(Object error) : Quando um ellemento é um erro
  - Void onDone () : Qiamdp a stream é finalizada
  - bool cancelOnError: Se a stream deve ser cancelada quando um ero é recebido

O listen so pode ser chamado uma vez, a não ser que seja usado a asBroadcastStream()

- StreamSubscription
  - Ao escutar uma stream, nos recebemos uma instancia da streamsubscription que possui alguns metodos importantes
    - pause(), resume() e cancel()
  
  - Mesmo que não seja obrigatoria, é importante que uma StreamSubscription seja cancelada no dispose() para evitar que aconteça algum vazamento de memoria


- Para criar uma stream
  - Usando o **Async*** QUE INDICA QUE VARIOS ELEMENTOS PODEM SER EXIBIDOS

  - Emitir elementos com o yield

```dart 
void main(){
  myTimerCounter(10).listen((event) {
    debugPrint(event.toString());
  });
}
Stream<int> myTimeCounter(int limit) async* {
  for(int count = 0; count < limit; count++){
    await Future.delayed(const Duration(seconds: 1));
    yield count;
  }
}
```
#### StreamController<T>
- Possui diversas propriedades (e alguns callbacks), mas duas mais importantes :
  - Stream<T> stream: retorna a Stream que esse StreamController gerencia
  - StreamSink<T> sink> usando para adicionar elementnos na stream

#### CUIDADOS
- Geralmente deve estar privado stream ou sink
- Chamar o metodo close()


### Streams na UI 
#### StreamBuilder<T>
- Widget que se reconstroi conforme a interação com uma Stream
  - Muito similar ao FutureBuilder

- Principais parametros
  - AsyncWidgetBuilder builder
  - Stream<T> stream

- Agora o ConectionState no snapshot vai assumir o estado de avtive
 
- Manipulação de Streams
   - Assimo como listas, nos podemos usar alguns metodos para manipular e transformar uma Stream
    - Metodos comuns a List e Stream: Map, Where, fold e outros
  - Alguns dos novos metodos: 
    - Distinct: não emite novos elementos iguais ao ultimo elemento emitido



### O que é estado
Tudo que existe em uma memoria durante o uso do app é um estado

#### Como gerenciar
- Todos os assets
- estados innternos do proprio flutter
- Bibliotecas

- Nos nao precisamos nos preocupar com esses estados, uma vez que eles não são nossa responsabilidade, e muitas vezes, nos nem temos acesso, então aa gerencia ficaa com seus criadores/donos

#### O que é estado na pratica
- Na pratica, um estado é qualquer coisa que nos precisamos usar para reconstruir a UI do nosso app num determinado momento
- Uma String que muda o texto, a cor , conforme a interação do usuario
- Um modelo custumizado que constroi item de uma lista
- Um bool que controla uma checkbox ou switch
- Podendo ser tambem um dado que vem de uma api ou serviço externo

### Tipos de estados

- **Efemeros** Um estado simplesque não muda de forma complexa ou precise de uma logica de negocio para ser criado
  - Estados de UI ou estados locais (fica geralmente em um Widget)
    - A pagina atual de um pageview
    - uma flag controlada por um checkbox ou switch para mostrar (ou não) uma parte da UI 
    - Na maioria dos casos nao é necessario uma estrategia para estados enfemeros, podemos usar o proprio stateful widget

- **Aplicação** Estado complexo que pode até ser compartilhado por diferentes partes do app

  - Estados que precisam de uma logica mais aplicada, conexão com serviços externos e que pode ser reutilizada em outras partes do projeto, sem interferencia direta da UI, encontrada na logica do negocio e testes unitarios
  
  
  # Consumo de API

- Camada de Dados no bloc 
	- Repository e data source/provider
- Crianndo um repositorio
- Enum
	- Aplicando no projeto
- Finalização do Projeto
	- Conectar camada de dados com o gerenciamento de estado


### API

- Aplication Pogramming Interfacee
	- Interface de programação de aplicacao

- APIs são restaurantes :
1. Os pratos ficam disponiveis num cardapio
2. Voce faz um pedido 
3. A cozinha começa a preparar o pedido
4. Depois de um tempo, o prato é entregue 

- Uma API expõe dados e operações para outros sistemas 
consumirem (Backend para Frontend : Mobile/Web/Postman
	- Geralmente a implementação nao é disponibilizada e como que os recursos foram implementados

- O que mais importa é saber todos os metodos e tipos de respostas possiveis para receber (cardapio)
	- Boas APIs tambem disponibilizam uma boa documentação para facilitar a utilização

### Por que usar uma API

- Economizar tempo de construção de uma funcionalidade em um projeto 
	- Ou seja importamos uma funcionalidade de uma API para algumas funcionalidades a serem implementadas no projeto

- APIs criam consistencia e seguraça entre eiferentes serviços, aplicativos e plataformas
	-  Se uma empresa disponibiliza um servico usando apis todos os seus cosumidores receberam a mesma informação

### Tipos de API
- Existem diversas classificações de api

	- Um codigo que faz uma abstração de uma funcionalidade pode ser chamado de API
	- Nos podemos ter apis internas num projeto, que nos mesmos podemos criar ou usar de serviços externos

- Perspectiva generica a partir de um app:
	- APIs internas
		- Local (Projeto)
		- Framework (Flutter)
		- Sistema Operacional (Android, iOS, etc)

	- APIs Externas 
		- Pacotes/bibliotecas (pub.dev)
		- Backend proprio (ambiente empresarial)
		- Web APIs (Web Service)

### Web API 
- Serviço online para ter acesso ou processar algum tipo de dado
(podem ser gratuitas/pagas/pacotes mensais)
	- EX: AccuWeather(clima), Google Maps, Skyscanner (passagens) e Facebook

- Em muitos casos, precisamos nos registrar para usar uma Web API, recebenndo uma chave de api, que nos indentifica e atrela a nossas requisiçoes

### Rest API 
- Apis geralmente seguem algum protocolo ou conjunto de arquiteturas
	- O tipo de Web API mais connhecido é o REST (Representational state transfer)
		- Tambem chamada de RestFul API
- Nao existe um padrão de implementação para rest apis, mas existem agumas restriçoes :
	- Arquitetura cliente/servidor por HTTP
	- Toda requisicao deve conter todas as informações necessarias para sua execuçao
### Como usar uma REST API
- Para usar uma REST API precisamos fazer uma chamada assicrona HTTP para um servidor externo com todas as informaçoes necessarias e aguardar resultado
- O Protocolo HTTTP é um dos pilares da internet e possui um conjunto de regras e padroes (RFCs)	
	- Os metodos GET (requisicoes) e POST (criacao/atualizaçao) sao os mais usados
		- HTTP nao possui garantia de conclusao podemos receber erros HTTP (EX 404)

- Precisamos direcionar a requisiacao a um servidor externo que identifica por uma URI (Uniform Resource Indentifier)
	- Uma API geralmente possui uma URL base e diversos endpoints (/data, /location) que compõe uma URI 

- Por fim passamos todos os parametros 

### Fluxo

apiKey: abc123				       www.api.com

App 	  	   ---Async GET--->     	REST API 
		GET/movies?key=abc123

	      <==HTTP 200 OK | body: {}===

- URI: http://www.api.com/movies?key-abc123
- Respostas 200 não garante que chamada retornou os dados que desejamos (chamada feita com sucesso)
- Depois precisamos checar por dados no body que geralmente é no formato JSON


### Map
- Um objeto que associa uma determinada chave com os valores
	- Podem ser qualquer tipo
	- Dart suporta a criacao de maps com a criacao direta com {} ou usando a classe/tipo Map

```dart
final yearlyResults = <int, String>{
	2020: 'Not so good',
	2021: 'Can it be worse?',
}

final movieMap = Map<String, dynamic>();
movieMap['duration'] = 78.0;
```

#### Manipulação de maps
- Um map possui alguns metodos comuns a manipulação de listas como forEach, map, remove, adaptados aos pares de chave e valor
 	- Ex: forEach((key, value) =>);
- Podemos acessar todas as chaves e valores na forma de lista usando .keys ou .values
- Para verificar se uma chave ou valor pertence a um Map podemos usar containsKey e containerValue respectivamente


#### Aplicacao de maps
- Maps sao geralmente usados internamente como dicionarios ou um hash 



### Manipulação de maps

- Podemos acessar todas as chaves e valores na forma de lista .keys ou .value

- Para verificar se uma chave ou valor pertence a um Map podemos usar containsKey e containsValue

- Alem disso a maior parte das respostas de uma WebAPI pode ser traduzida com um Map
	- O tipo Map<String, dynamic>

### Json 
- Notacao de troca de informaçao que facilita na criacao e na leitura, onde permite que diversas tecnologias conseguem interagit

object {string : value}

### Respostas em JSON 
- Ao receber a resposta de uma Web API, o dart processa os bytes recebidos e nos entrega um body no formato de strning
- Usar string direta não é muito versatil 
- Esse processo de conversao é chamado de serialização de json
	- Econding (codificação) conversao de um modelo/estrutura de dados em string
	- Deconding (Decodificaçao) connversao de uma string num modelo/estrutura dedos
- O dart possibilita algumas funcoes para serializar 
	- jsonDecode (Strings source)
	- jsonEncode (Object object)

https://javiercbk.github.io/json_to_dart/

```dart
class Autogenerated {
  int? count;
  String? next;
  Null? previous;
  List<Results>? results;

  Autogenerated({this.count, this.next, this.previous, this.results});

  Autogenerated.fromJson(Map<String, dynamic> json) {
    count = json['count'];
    next = json['next'];
    previous = json['previous'];
    if (json['results'] != null) {
      results = <Results>[];
      json['results'].forEach((v) {
        results!.add(new Results.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['count'] = this.count;
    data['next'] = this.next;
    data['previous'] = this.previous;
    if (this.results != null) {
      data['results'] = this.results!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Results {
  String? name;
  String? url;

  Results({this.name, this.url});

  Results.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    url = json['url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['url'] = this.url;
    return data;
  }
}
````
```json
{
    "id": 132,
    "name": "ditto",
    "types": [
        {
            "slot": 1,
            "type": {
                "name": "normal",
                "url": "https://pokeapi.co/api/v2/type/1/"
            }
        }
    ]
}
```

https://jsonformatter.curiousconcept.com/#
````dart 
class PokemonDto {
  int? id;
  String? name;
  List<Types>? types;

  PokemonDto({this.id, this.name, this.types});

  PokemonDto.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    if (json['types'] != null) {
      types = <Types>[];
      json['types'].forEach((v) {
        types!.add(new Types.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    if (this.types != null) {
      data['types'] = this.types!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Types {
  int? slot;
  Type? type;

  Types({this.slot, this.type});

  Types.fromJson(Map<String, dynamic> json) {
    slot = json['slot'];
    type = json['type'] != null ? new Type.fromJson(json['type']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['slot'] = this.slot;
    if (this.type != null) {
      data['type'] = this.type!.toJson();
    }
    return data;
  }
}

class Type {
  String? name;
  String? url;

  Type({this.name, this.url});

  Type.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    url = json['url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['url'] = this.url;
    return data;
  }
}
````
### Enum 

Enum é um tipo ou uma classe que representa um numero fixo de valores constantes- 

- Tipo Enumerado
- Muito usado para categorizar itens
	- Ex: tipos de carros, condiçoes climaticas, status de requisicao de api
- Cada valor num enum possui um index, que retorna sua posicao na declaracao enum
	- Index começa no 0

```dart

enum Operator {
soma, subtracao, multipliucacao, divisao	
}

void simpleCalculator(){
	const operator = Operator.subtracao;
	final operatorIndex = operador.index;
}

switch (operador){
	case Operador.soma: break;
	case Operador.subtracao: break;
	case Operador.multiplicacao: break;
	case Operador.divisao: break;
}

- Temos acesso a todos os valores na forma de propriedade .values
- Quando usamos um enum num switch nseremos informados com um warning quando algum valor n foi informado
- Apesar de um enum ser uma classe, nao conseguimos usar herança























  
  
