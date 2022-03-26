## Classes - COM MÉTODOS

As classes podem possuir métodos também para serem rodados. Vamos ver agora como podemos criar métodos para uma classe.

Vamos criar uma nova classe chamada Animal. Essa classe possuirá o nome do animal e seu construtor por enquanto.

```dart
class Animal {
    String nome;

    Animal(this.nome);
}
```

Agora, vamos pensar em quais funções um animal pode fazer. Um animal pode:

- Falar;
- Andar;
- Correr;
- Entre muitos outros;

Então vamos adicionar essas funcionalidades para nossa classe animal!

Vamos começar com "Falar". Cada animal possui um jeito de falar. Um cachorro fala "Au", um gato fala "Miau" e um leão fala "Rawr". Como fazemos para diferenciar o que cada animal falará? Veremos abaixo.

```dart
class Animal {
    String nome;

    Animal(this.nome);

    void falar(String som) {
        print("$nome falou: $som!");
    }
}
```

Simples assim! Vamos para a nossa main agora.

```dart
void main() {
    Animal cachorro = Animal("cachorro");
    Animal gato = Animal("gato");
    Animal leao = Animal("leao");

    cachorro.falar("Au"); // cachorro falou: Au!
    gato.falar("Miau");   // gato falou: Miau!
    leao.falar("Rawr");   // leao falou: Rawr!
}
```

Agora para nossas próximas funções nós podemos fazer da mesma maneira

```dart
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
```
