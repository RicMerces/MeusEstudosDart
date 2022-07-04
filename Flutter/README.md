
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