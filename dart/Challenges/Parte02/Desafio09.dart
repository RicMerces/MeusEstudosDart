import 'dart:io';

void main() {
  print("Informe três valores");
  var n1 = stdin.readLineSync()!;
  var n2 = stdin.readLineSync()!;
  var n3 = stdin.readLineSync()!;

  double nu1 = double.parse(n1);
  double nu2 = double.parse(n2);
  double nu3 = double.parse(n3);

  if (nu1 >= nu2 && nu1 > 3 && nu2 >= nu3) {
    print("$nu1 > $nu2 > $nu3");
  } else if (nu2 >= nu1 && nu2 > nu3 && nu1 >= nu3) {
    print("$nu2 > $nu1 > $nu3");
  } else if (nu3 >= nu1 && nu3 > nu2 && nu1 >= nu2) {
    print("$nu3 > $nu1 > $nu2");
  } else if (nu3 >= nu2 && nu3 > nu1 && nu2 >= nu1) {
    print("$nu3 > $nu2 > $nu1");
  } else if (nu2 >= nu3 && nu2 > nu1 && nu3 >= nu1) {
    print("$nu2 > $nu3 > $nu1");
  } else {
    print("$nu1 = $nu2 = $nu3");
  }
}
