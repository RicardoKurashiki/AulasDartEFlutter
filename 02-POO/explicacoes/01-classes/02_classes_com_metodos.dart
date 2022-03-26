class Animal {
  String nome;

  Animal(this.nome);

  void falar(String som) {
    print("$nome falou: $som!");
  }

  void andar() {
    print("$nome está andando!");
  }

  void correr() {
    print("$nome está correndo!");
  }
}

void main() {
  Animal cachorro = Animal("cachorro");
  Animal gato = Animal("gato");
  Animal leao = Animal("leao");

  cachorro.falar("Au"); // cachorro falou: Au!
  gato.falar("Miau"); // gato falou: Miau!
  leao.falar("Rawr"); // leao falou: Rawr!
}
