main() {
  var matriz = [
    ["Messi", "Neymar"],
    ["Cristiano", "Marcelo"],
    ["Salah", "Mané"],
    ["Pogba", "Griezman"],
    ["Thiago Silva", "David Luiz"]
  ];

  for (var duplas in matriz) {
    print("dupla : $duplas");
    int i = 0;
    for (var jogador in duplas) {
      i++;
      print("Jogador $i: $jogador ");
    }
  }
}
