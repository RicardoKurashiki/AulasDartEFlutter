/*
Você ficou responsável por criar um sistema de cadastro de cliente da loja BrincaMais!

O sistema deve ter as seguintes funcionalidades:
- Cadastro de clientes
- Cadastro de produtos
- Cadastro de pedidos
- Listar clientes
- Listar produtos
- Listar pedidos

Onde:
- Loja:
    - Nome
    - Telefone
    - Lista de clientes
    - Lista de produtos
    - Lista de pedidos

- Cliente:
    - Nome
    - CPF
    - Endereço
    - Telefone
    - Email
    - Senha

- Produto:
    - Nome
    - Descrição
    - Preço
    
- Pedido:
    - Cliente
    - Produto
    - Quantidade
    - Valor
*/

class Cliente {
  String nome;
  String cpf;
  String endereco;
  String telefone;
  String email;
  String senha;

  Cliente(this.nome, this.cpf, this.endereco, this.telefone, this.email, this.senha);
}

class Produto {
  String nome;
  String descricao;
  double preco;

  Produto(this.nome, this.descricao, this.preco);
}

class Pedido {
  Cliente cliente;
  Produto produto;
  int quantidade;
  double valor;

  Pedido(this.cliente, this.produto, this.quantidade, this.valor);
}

class Loja {
  String nome;
  String telefone;
  List<Cliente> clientes;
  List<Produto> produtos;
  List<Pedido> pedidos;

  Loja(this.nome, this.telefone, this.clientes, this.produtos, this.pedidos);

  void cadastrarCliente(Cliente cliente) {
    clientes.add(cliente);
  }

  void cadastrarProduto(Produto produto) {
    produtos.add(produto);
  }

  void cadastrarPedido(Pedido pedido) {
    pedidos.add(pedido);
  }

  void listarClientes() {
    for (Cliente cliente in clientes) {
      print("${cliente.nome}");
    }
  }

  void listarProdutos() {
    for (Produto produto in produtos) {
      print("${produto.nome}");
    }
  }

  void listarPedidos() {
    for (Pedido pedido in pedidos) {
      print(
          "${pedido.quantidade}x - ${pedido.produto.nome} para ${pedido.cliente.nome} - R\$${pedido.valor}");
    }
  }
}

void main() {
  Loja loja = Loja("BrincaMais", "11 9999-9999", [], [], []);

  Cliente cliente1 = Cliente(
    "João",
    "123.456.789-00",
    "Rua 1",
    "11 9999-9999",
    "joao@email.com",
    "123456",
  );

  Cliente cliente2 = Cliente(
    "Maria",
    "987.654.321-00",
    "Rua 2",
    "22 9999-9999",
    "maria@email.com",
    "123456",
  );

  Produto produto1 = Produto(
    "Boneca",
    "Boneca de boneco",
    10.0,
  );

  Produto produto2 = Produto(
    "Boneco",
    "Boneco de boneca",
    20.0,
  );

  Pedido pedido1 = Pedido(
    cliente1,
    produto1,
    1,
    10.0,
  );

  Pedido pedido2 = Pedido(
    cliente2,
    produto2,
    2,
    20.0,
  );

  loja.cadastrarCliente(cliente1);

  loja.cadastrarCliente(cliente2);

  loja.listarClientes();

  print("------------");

  loja.cadastrarProduto(produto1);

  loja.cadastrarProduto(produto2);

  loja.listarProdutos();

  print("------------");

  loja.cadastrarPedido(pedido1);

  loja.cadastrarPedido(pedido2);

  loja.listarPedidos();
}
