
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