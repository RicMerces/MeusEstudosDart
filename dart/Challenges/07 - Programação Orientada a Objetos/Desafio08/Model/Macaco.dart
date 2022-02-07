class Macaco {
  Macaco([this.nome = '']);

  String nome;
  List bucho = [];

  List comer(String aliemento) {
    this.bucho.add(aliemento);
    return bucho;
  }

  String verBucho() {
    // String resposta = '';
    // String aux = '';
    // for (int i = 0; i < this.bucho.length; i++) {
    //   resposta = '${bucho[i]}' + aux;
    // }
    // print(resposta);
    return '$bucho';
  }
}
