/*
Crie duas classes, uma classe "Zoologico" e outra "Animal".

A classe Animal terá os seguintes atributos:
- nome
- idade
- peso

E o seguinte método:
- falar
- comer
---------------------------------------------------------
E a classe Zoologico terá os seguintes atributos:
- nome (String)
- animais (List<Animal>)

E as seguintes funções:
- adicionarAnimal
- listarAnimais
- removerAnimal
- alimentarAnimais (alimentar animais vai fazer com que todos os animais comam)
- chamarAnimais (chamar animais vai fazer com que todos os animais falem)
*/

class Animal {
  String nome;
  int idade;
  double peso;

  Animal(this.nome, this.idade, this.peso);

  void falar() {
    print("$nome falou!");
  }

  void comer() {
    print("$nome: $idade anos, peso: $peso kg, está comendo!!");
  }
}

class Zoologico {
  String nome;
  List<Animal> animais;

  Zoologico(this.nome, this.animais);

  void adicionarAnimal(Animal animal) {
    animais.add(animal);
  }

  void listarAnimais() {
    for (Animal animal in animais) {
      print("${animal.nome}");
    }
  }

  void removerAnimal(Animal animal) {
    if (!(animais.contains(animal))) {
      return;
    }
    animais.remove(animal);
  }

  void alimentarAnimais() {
    for (Animal animal in animais) {
      animal.comer();
    }
  }

  void chamarAnimais() {
    for (Animal animal in animais) {
      animal.falar();
    }
  }
}

void main() {
  Zoologico zoo = Zoologico("Zoo do João", []);

  Animal animal1 = Animal("Cachorro", 5, 10);
  Animal animal2 = Animal("Gato", 2, 5);
  Animal animal3 = Animal("Leão", 10, 100);

  zoo.adicionarAnimal(animal1);
  zoo.adicionarAnimal(animal2);
  zoo.adicionarAnimal(animal3);

  zoo.listarAnimais();

  print("-------------");

  zoo.removerAnimal(animal2);

  zoo.listarAnimais();

  print("-------------");

  zoo.alimentarAnimais();

  print("-------------");

  zoo.chamarAnimais();
}
