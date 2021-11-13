import 'dart:io';

void main() {
  int fn = 1;
  int n1 = 1;
  int n2 = 0;
  print(0);
  while (fn < 16 && fn > 0) {
    print(fn);
    fn = n1 + n2;
    n2 = n1;
    n1 = fn;
  }
}
