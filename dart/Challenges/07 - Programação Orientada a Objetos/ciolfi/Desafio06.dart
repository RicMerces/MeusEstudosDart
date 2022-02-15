class Controle {
  Controle({required this.canal});
  int volume = 0;
  int canal;

  int aumentarV() {
    if (volume >= 100) {
      volume == 100;
    } else {
      volume++;
    }
    return volume;
  }

  int diminuirV() {
    if (volume <= 0) {
      volume == 0;
    } else {
      volume--;
    }
    return volume;
  }

  int aumentarC() {
    canal++;
    print("Canal $canal");
    return canal;
  }

  int diminuirC() {
    canal--;
    print("Canal $canal");
    return canal;
  }

  int alterarCanal(novoCanal) {
    this.canal = novoCanal;
    print("Canal $canal");
    return canal;
  }
}

void main() {
  Controle c = new Controle(canal: 11);
  c.aumentarC();
  print(c.canal);
  c.diminuirC();
  c.diminuirC();
  print(c.canal);
  c.alterarCanal(39);
  c.aumentarC();

  for (int i = 0; i < 120; i++) {
    c.aumentarV();
  }
  print(c.volume);
  for (int i = 0; i > -100; i--) {
    c.diminuirV();
  }
  print(c.volume);
}
