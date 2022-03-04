import '../Model/Compromissos.dart';
import '../Model/CompromissosPresenciais.dart';
import '../Model/CompromissosRemotos.dart';

void main() {
  CompromissosPresenciais c1 =
      new CompromissosPresenciais('10/09/2020', 8, 'Osasco');

  CompromissosRemotos c2 =
      CompromissosRemotos('09/11/2021', 3, 'Feira de Santana');

  print(c1);
  print('\n$c2');
}
