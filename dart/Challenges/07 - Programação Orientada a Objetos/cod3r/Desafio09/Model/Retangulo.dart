import 'Ponto.dart';

class Retangulo {
  Retangulo({this.largura = 0, this.altura = 0});

  double largura;
  double altura;

  String gerarCentro() {
    double centroLargura = (largura / 2);
    double centroAltura = (altura / 2);
    Ponto p = Ponto(centroLargura, centroAltura);

    return p.resultado();
  }
}
