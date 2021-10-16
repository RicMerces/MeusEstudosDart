void main() {
  var lancamento = {
    'LOST': 2004,
    'The Walking Dead': 2008,
    'Game Of Thrones': 2013,
    'Arrow': 2012,
    'Vikings': 2013
  };

  for (var seriado in lancamento.keys) {
    print("A serie '$seriado' foi lançada em ${lancamento[seriado]}");
  }
}
