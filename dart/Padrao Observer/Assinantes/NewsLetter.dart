import 'Assinante.dart';

abstract class Newletter {
  final _assinantes = <Assinante>[];

  void addAssinante(Assinante assinante) {
    _assinantes.add(assinante);
  }

  void _notificarAssinante() {
    for (var assinante in _assinantes) {
      assinante.notify();
    }
  }

  void enviarEdicao(String conteudo) {
    print('Hoje vamos ter: $conteudo');
    _notificarAssinante();
  }
}
