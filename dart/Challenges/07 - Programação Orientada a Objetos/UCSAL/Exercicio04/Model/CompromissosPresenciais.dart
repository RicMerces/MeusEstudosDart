import 'Compromissos.dart';

class CompromissosPresenciais extends Compromissos {
  CompromissosPresenciais(String data, int duracao, this.lugar)
      : super(data: data, duracao: duracao);

  String? lugar;

  @override
  String toString() {
    return 'EVENTO PRESENCIAL !\nLugar : $lugar\n${super.toString()}';
  }
}
