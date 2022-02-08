class Ponto {
  Ponto([this._x = 0, this._y = 0]);

  double _x;
  double _y;

  String imprimirPonto() {
    String r = 'x = $x e y = $y';
    print(r);
    return r;
  }

  double get x {
    return this._x;
  }

  double get y {
    return this._y;
  }

  void set x(double novoX) {
    this._x = novoX;
  }

  void set y(double novoY) {
    this._y = novoY;
  }
}
