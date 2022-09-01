class Loja {
  List<String> _mercadorias = [];

  void addMercadoria(String mercadoria) {
    _mercadorias.add(mercadoria);
  }

  List<String> get mercadorias => _mercadorias;

  void removeMercadoria(String mercadoria) {
    _mercadorias.remove(mercadoria);
  }

  bool chegou(String mercadoria) {
    return _mercadorias.contains(mercadoria);
  }
}
