class Ponto {
  Ponto(this.x, this.y);

  double x;
  double y;

  String imprimirPonto() {
    String r = 'x = $x e y = $y';
    print(r);
    return r;
  }
}
