import 'dart:io';

class Retangulo {
  double _altura = 0;
  double _largura = 0;
  bool quadrado = false;

  //Retornar valores
  double get altura {
    return _altura;
  }

  double get largura {
    return _largura;
  }

  //Alterar Valores
  void set altura(double newH) {
    _altura = newH;
  }

  void set largura(double newW) {
    _largura = newW;
  }

  bool verificarQuadrado() {
    if (altura == largura) {
      quadrado = true;
    }
    return quadrado;
  }

  double calcularArea() {
    return altura * largura;
  }

  double calcularPerimetro() {
    return (largura * 2) + (altura * 2);
  }

  //Imprimir
  String toString() {
    return '==========================\nAltura = $altura\nLargura = $largura\nArea = ${calcularArea()}\nPerimetro = ${calcularPerimetro()}\nÉ um quadrado ? = ${verificarQuadrado()}\n==========================';
  }
}

void main() {
  print("Informe a altura do retangulo");
  var h = stdin.readLineSync()!;
  print("Informe a largura do retangulo");
  var w = stdin.readLineSync()!;

  Retangulo r01 = Retangulo();
  r01.altura = double.parse(h);
  r01.largura = double.parse(w);

  print(r01);
}
