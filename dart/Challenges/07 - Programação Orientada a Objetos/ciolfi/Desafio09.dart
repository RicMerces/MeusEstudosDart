class Retangulo {
  Retangulo({required this.altura, required this.largura});

  double altura;
  double largura;

  String pontoSelecionado(String x) {
    String resp = '';
    if (x == '10') {
      Ponto inferiorDireito = new Ponto(x: largura, y: 0);
      resp = inferiorDireito.imprimirP();
    } else if (x == '11') {
      Ponto superiorDireito = new Ponto(x: largura, y: altura);
      resp = superiorDireito.imprimirP();
    } else if (x == '00') {
      Ponto inferiorEsquerdo = new Ponto(x: 0, y: 0);
      resp = inferiorEsquerdo.imprimirP();
    } else if (x == '01') {
      Ponto superiorEsquerdo = new Ponto(x: 0, y: altura);
      resp = superiorEsquerdo.imprimirP();
    }
    return resp;
  }

  String encontrarCentro() {
    Ponto p01 = new Ponto(x: largura / 2, y: altura / 2);
    return p01.imprimirP();
  }
}

class Ponto {
  Ponto({required this.x, required this.y});
  double x;
  double y;

  String imprimirP() {
    return 'Pares Ordenados\n Eixo X = $x\n Eixo Y = $y';
  }
}

void main() {
  Retangulo r = new Retangulo(altura: 10, largura: 20);

  print(r.pontoSelecionado('10'));
  print(r.pontoSelecionado('11'));
  print(r.pontoSelecionado('01'));
  print(r.pontoSelecionado('00'));

  print(r.encontrarCentro());
  r.altura = 40;
  print(r.encontrarCentro());
}
