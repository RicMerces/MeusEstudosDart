import 'Compromissos.dart';

class CompromissosRemotos extends Compromissos {
  CompromissosRemotos(String data, int duracao, this.aplicativo)
      : super(data: data, duracao: duracao);

  String? aplicativo;

  @override
  String toString() {
    return 'EVENTO REMOTO !\nPrograma : $aplicativo\n' + super.toString();
  }
}
