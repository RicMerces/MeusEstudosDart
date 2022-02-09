import 'Ponto.dart';

class Retangulo {
  Ponto ponto = new Ponto({_altura = 0, largura = 0});

  double _altura;
  double _largura;

  var verticeSuperiorFinal = new Ponto(_largura, _altura);
  var verticeInferiorFinal = new Ponto(_largura, 0);
  var verticeSuperiorInicial = new Ponto(0, _altura);
  var verticeInferiorInicial = new Ponto(0, 0);

  // encontrarCentro() {}

  double get altura {
    return this._altura;
  }

  double get largura {
    return this._largura;
  }

  void set altura(double h) {
    this._altura = h;
  }

  void set largura(double w) {
    this._largura = w;
  }
}
