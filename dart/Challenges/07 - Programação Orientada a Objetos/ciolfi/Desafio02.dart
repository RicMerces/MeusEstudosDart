import 'dart:io';

class Quadrado {
  double _tamanhoLado = 0;

  double get tamanhoLado {
    return this._tamanhoLado;
  }

  void set tamanhoLado(double l) {
    this._tamanhoLado = l;
  }

  double calcularArea() {
    return tamanhoLado * tamanhoLado;
  }
}

void main() {
  print("Informe um valor de lado para calcular a area");
  var lado = stdin.readLineSync()!;
  Quadrado q1 = Quadrado();
  q1.tamanhoLado = double.parse(lado);

  print("Informe outra medida para o otro quadrado");
  var lado2 = stdin.readLineSync()!;
  Quadrado q2 = Quadrado();
  q2.tamanhoLado = double.parse(lado2);

  double areaQ1 = q1.calcularArea();
  double areaQ2 = q2.calcularArea();

  double areaFinal = areaQ1 + areaQ2;
  print("Area01 $areaQ1 + Area02 $areaQ2 = Area Final $areaFinal");
}
