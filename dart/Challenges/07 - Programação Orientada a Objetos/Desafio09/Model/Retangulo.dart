import 'Ponto.dart';

class Retangulo {
  Retangulo([this.altura, this.largura]);

  double _altura;
  double _largura;

  Ponto p = new Ponto(altura, largura);

  String centroRetangulo() {
    String centro = '';
    double alturaCentral = (altura / 2);
    double larguraCentral = (largura / 2);

    Ponto pCentro = new Ponto(alturaCentral, larguraCentral);
  }

  double get altura {
    return _altura;
  }

  double get largura {
    return _largura;
  }

  void set altura(double altura) {
    this._altura = altura;
  }

  void set largura(double largura) {
    this._largura = largura;
  }
}
