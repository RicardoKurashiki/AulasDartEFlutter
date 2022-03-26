## Classes - CONSTRUTORES

Algumas informações a mais sobre classes e construtores.

1. Os construtores podem possuir, igual as funções, parâmetros que podem ser nulos. Campos que podem ser nulos são passados no argumentos ou com `[]` para uma funcionalidade mais parecida dos argumentos normais, onde a ordem que os argumentos passados importam, ou com `{}`, que são argumentos com nomes, onde a ordem não importa, mas que é necessário especificar qual argumento está sendo passado.

```dart
class Pessoa {
    String primeiroNome;
    String? nomeDoMeio;
    String sobrenome;

    Pessoa(this.primeiroNome, this.sobrenome, [this.nomeDoMeio]);
}

void main() {
    Pessoa pessoa1 = Pessoa("nome", "sobrenome", "nomeMeio");
    Pessoa pessoa2 = Pessoa("nome", "sobrenome");
}
```

OU

```dart
class Pessoa {
    String primeiroNome;
    String? nomeDoMeio;
    String sobrenome;

    Pessoa({
        required this.primeiroNome, // REQUIRED -> utilizado quando um campo é obrigatório, mas é passado em um lugar onde aceita
        required this.sobrenome,    // valor nulo, como dentro das chaves em um argumento.
        this.nomeDoMeio,
    });
}

void main() {
    Pessoa pessoa1 = Pessoa(
        primeiroNome: "nome",
        nomeDoMeio: "nomeMeio",
        sobrenome: "sobrenome",
    );

    Pessoa pessoa2 = Pessoa(
        primeiroNome: "nome",
        sobrenome: "sobrenome",
    );
}
```

2. Além do construtor padrão de uma classe, também é possível criar construtores que agem como métodos.

```dart
class Pessoa {
  String nome;
  int idade;
  double altura;
  double peso;

  Pessoa(this.nome, this.idade, this.altura, this.peso);

  // Esses dois pontos (:) servem para transferir o valor que está vindo para as propriedades da classe.
  Pessoa.fromMap(Map<String, dynamic> mapa) :
        nome = mapa['nome'],
        idade = mapa['idade'],
        altura = mapa['altura'],
        peso = mapa['peso'];
}

void main() {
    Pessoa pessoa1 = Pessoa("Ricardo", 20, 1.80, 80.0);
    Pessoa pessoa2 = Pessoa.fromMap({
            "nome": "Leandro",
            "idade": 23,
            "altura": 1.83,
            "peso": 90.0,
        });
}

```
