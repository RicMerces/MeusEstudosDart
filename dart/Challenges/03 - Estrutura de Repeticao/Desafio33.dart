import 'dart:io';

String dia = '';
int temp = 0;
int x = 0;
int y = 0;
var max = 0;
var min = 0;
void main() {
  for (int i = 1; i <= 7; i++) {
    if (i == 1) {
      dia = 'Domingo';
    } else if (i == 2) {
      dia = 'Segunda';
    } else if (i == 3) {
      dia = 'Terça';
    } else if (i == 4) {
      dia = 'Quarta';
    } else if (i == 5) {
      dia = 'Quinta';
    } else if (i == 6) {
      dia = 'Sexta';
    }
    print("Informe a temperatura de $dia");
    var temperatura = stdin.readLineSync()!;
    temp = int.parse(temperatura);

    if (temp > max) {
      max = temp;
    }
    if (i == 1 || temp < min) {
      min = temp;
    }

    y = temp + x;
    x = y;
  }
  double media = y / 7;
  print(
      "A Temperatura maxima = $max e a temperatura minima = $min \n|MEDIA = $media|");
}
