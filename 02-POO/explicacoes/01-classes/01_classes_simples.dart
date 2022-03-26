class Pessoa {
  String nome;
  int idade;
  double altura;
  double peso;

  Pessoa(this.nome, this.idade, this.altura, this.peso);
}

void main() {
  Pessoa pessoa = Pessoa('João', 20, 1.80, 80);

  print(pessoa.nome);
  print(pessoa.idade);
  print(pessoa.altura);
  print(pessoa.peso);
}
