## Tarefas

O primeiro vídeo é de introdução a programação orientada à objetos

1. https://www.youtube.com/watch?v=QY0Kdg83orY

Já o segundo tem a parte prática de Classes

2. https://www.youtube.com/watch?v=9Qi-mNYxRQI

## Classes - SIMPLES

Nós já vimos algumas classes enquanto estavamos aprendendo os fundamentos de programação. Alguns exemplos de classes são: `String`, `int`, `double`, `List`, entre outras.

Resumindo: Uma classe é um tipo de dado que possui tanto variáveis quando funções dentro dela. As classes vão ser utilizadas para armazenar tanto dados quanto lógicas.

Antes de começar com a explicação de o que é uma classe, primeiro vamos tentar entender o por quê de utilizarmos classes.

Vamos imaginar o seguinte caso: Você está querendo criar um programa que salva um número de usuários no seu sistema. Do jeito que aprendemos até agora, poderia ser da seguinte maneira.

```dart

void main() {
    Map<String, dynamic> pessoa1 = {
        "nome": "Ricardo",
        "idade": 20,
        "altura": 1.80,
        "peso": 80.0
    };

    Map<String, dynamic> pessoa2 = {
        "nome": "Leandro",
        "idade": 23,
        "altura": 1.83,
        "peso": 90.0
    };

    Map<String, dynamic> pessoa3 = {
        "Nome": "Rafael",
        "idade": 25,
        "altura": 1.85,
        "peso": 86.0
    };
}

```

Se quisessemos os nomes das pessoas, poderiamos fazer:

```dart
void main() {
    ...

    List pessoas = [pessoa1, pessoa2, pessoa3];

    for (Map<String, dynamic> pessoa in pessoas) {
        print(pessoa['nome']); // Dessa maneira, quando fosse chamar o nome da terceira pessoa, iria dar erro,
                               // pois a chave está com N maiúsculo.
    }
}
```

Difícil, né?

Então vamos ver sobre as classes para facilitar isso.

## Explicação

Para criar uma nova classe, fazemos:

```dart
// class NOME_DA_CLASSE {}
class Pessoa {}
```

Dentro da nova classe criada acima, a classe `Pessoa`, podemos declarar quais dados essa classe vai ter:

```dart
class Pessoa {
    // É sempre necessário passar o tipo do dado que a classe vai ter, pois diferente da criação de uma variável, dentro da classe estamos DECLARANDO uma variável, portanto não se pode utilizar o 'var'.
    String nome;
    int idade;
    double altura;
    double peso;
}
```

Com isso, já temos uma classe `Pessoa` criada, e foi associado quatro atributos para ela, um atributo `nome`, um `idade`, um `altura` e um `peso`.

Agora vamos ver como podemos **INSTANCIAR** esta classe em nosso código.

Dentro da `main`, podemos criar uma variável do nosso novo tipo criado.

```dart
void main() {
    Pessoa pessoa = Pessoa();
}
```

Com isso, foi criada uma **instancia** da classe `Pessoa`. Mas como podemos associar valores aos campos de `nome`, `idade`, `altura` e `peso` para a classe criada?

Para isso, é necessário criar um **construtor** para a classe, onde este será responsável por atribuir os valores para as propriedades da sua classe.

```dart
class Pessoa {
    String nome;
    int idade;
    double altura;
    double peso;

    Pessoa(this.nome, this.idade, this.altura, this.peso); // A palavra reservada `this` serve para atribuir o valor à variável da classe
                                                           // que está sendo alterada no momento.
}
```

Agora na main teremos:

```dart
void main() {
    Pessoa pessoa = Pessoa("Ricardo", 20, 1.80, 80.0);
}
```

Para chamarmos um atributo da classe, fazemos `NomeDaClasse.Atributo`

```dart
void main() {
    Pessoa pessoa = Pessoa("Ricardo", 20, 1.80, 80.0);

    print(pessoa.nome); // "Ricardo"
}
```

Pronto! Você criou sua primeira classe.
