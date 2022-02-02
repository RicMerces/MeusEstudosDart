import 'dart:io';
import '../model/Data.dart';

main() {
  print("Informe qual a velocidade maxima do modelo de veiculo");
  var vMax = stdin.readLineSync()!;
  int vM = int.parse(vMax);
  var seuCarro = new Data(vM, 1000);
}
