import '../Model/Funcionario.dart';
import '../Model/Infermeira.dart';
import '../Model/Medico.dart';
import '../Model/ServicoDeLimpeza.dart';

void main() {
  Infermeira i = new Infermeira('Helena', 71, 18181818, '11969');
  Medico m = new Medico('Fernada', 32, 03003303, '552369');
  ServicoDeLimpeza s = new ServicoDeLimpeza('Jaci', 42, 545668);
  Funcionario f = new Medico('Vinicius', 22, 45456654, '88866600');

  print(i);
  print(m);
  print(s);
  print(f);
}
