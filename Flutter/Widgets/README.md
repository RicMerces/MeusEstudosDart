
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


