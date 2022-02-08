import 'Ponto.dart';

class Retangulo {
  double largura;
  double altura;

  Retangulo({this.altura = 0, this.largura = 0});

  var verticeInferiorEsquerdo = new Ponto(0, 0);
  var verticeInferiorDireiro = new Ponto(largura, 0);
  var verticeSuperiorEsquerdo = new Ponto(0, altura);
  var verticeSuperiorDireiro = new Ponto(largura, altura);
}
