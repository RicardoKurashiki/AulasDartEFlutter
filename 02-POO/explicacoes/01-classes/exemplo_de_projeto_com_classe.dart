/*
Projeto com classe - Gerenciamento de contas bancárias

Você ficou responsável por criar um sistema de gerenciamento do banco YourMoney!

O sistema deve ter as seguintes funcionalidades:
    - Cadastro de conta
    - Remoção de conta
    - Listar contas
    - Ver quem é o cliente de uma conta específica
    - Checar saldo de uma conta
    - Listar movimentações de uma conta

Onde:
- Banco:
    - Nome
    - Telefone
    - Lista de contas
- Cliente:
    - Nome
    - CPF
    - Telefone
    - Email
    - Senha
- Conta:
    - Número
    - Agência
    - Saldo
    - Cliente
    - Lista de movimentações
- Movimentação:
    - Data
    - Tipo
    - Valor
*/

class Cliente {
  String nome;
  String cpf;
  String telefone;
  String email;
  String senha;

  Cliente({
    required this.nome,
    required this.cpf,
    required this.telefone,
    required this.email,
    required this.senha,
  });
}

class Movimentacao {
  String data;
  String tipo;
  double valor;

  Movimentacao({
    required this.data,
    required this.tipo,
    required this.valor,
  });
}

class Conta {
  int numero;
  int agencia;
  double saldo;
  Cliente cliente;
  List<Movimentacao> movimentacoes;

  Conta({
    required this.numero,
    required this.agencia,
    required this.saldo,
    required this.cliente,
    required this.movimentacoes,
  });
}

class BancoYourMoney {
  String nome;
  String telefone;
  List<Conta> contas = [];

  BancoYourMoney({
    required this.nome,
    required this.telefone,
    required this.contas,
  });

  void cadastrarConta(Conta conta) {
    print("-- CADASTRO DE CONTA --");
    contas.add(conta);
    print("-- CONTA CADASTRADA --\n");
  }

  void removerConta(Conta conta) {
    print("-- REMOÇÃO DE CONTA --");
    if (!(contas.contains(conta))) {
      print("Essa conta não está cadastrada!\n");
      return;
    }
    contas.remove(conta);
    print("-- CONTA REMOVIDA --\n");
  }

  void listarContas() {
    print("-- LISTAGEM DE CONTA --");
    for (Conta conta in contas) {
      print(
          'Conta: ${conta.numero}-${conta.agencia}\nCliente ${conta.cliente.nome}\nSaldo: ${conta.saldo}'); // O \n funciona para QUEBRAR UMA LINHA no print.
      print("-----------------------------------------");
    }
    print("-- FIM DA LISTAGEM --\n");
  }

  void checarCliente(Conta conta) {
    print("-- CHECAGEM DE CLIENTE --");
    if (!(contas.contains(conta))) {
      print("Essa conta não está cadastrada!\n");
      return;
    }
    print(
        'Cliente: ${conta.cliente.nome}\nCPF: ${conta.cliente.cpf}\nTelefone: ${conta.cliente.telefone}\nEmail: ${conta.cliente.email}');
    print("-- FIM DA CHECAGEM --\n");
  }

  void checarSaldo(Conta conta) {
    print("-- CHECAGEM DE SALDO --");
    if (!(contas.contains(conta))) {
      print("Essa conta não está cadastrada!\n");
      return;
    }
    print('Saldo da conta ${conta.numero}: ${conta.saldo}');
    print("-- FIM DA CHECAGEM --\n");
  }

  void listarMovimentacoes(Conta conta) {
    print("-- LISTAGEM DE MOVIMENTAÇÕES --");
    if (!(contas.contains(conta))) {
      print("Essa conta não está cadastrada!\n");
      return;
    }
    print("Conta: ${conta.numero}-${conta.agencia}");
    for (Movimentacao movimentacao in conta.movimentacoes) {
      print('Movimentação: ${movimentacao.data} - ${movimentacao.tipo} - ${movimentacao.valor}');
      print("-----------------------------------------");
    }
    print("-- FIM DA LISTAGEM-- \n");
  }
}

void main() {
  // Para testar, primeiro vamos criar três clientes
  Cliente cliente1 = Cliente(
    nome: 'João',
    cpf: '123.456.789-10',
    telefone: '11 99999-9999',
    email: 'joao@email.com',
    senha: '123456',
  );
  Cliente cliente2 = Cliente(
    nome: 'Maria',
    cpf: '109.876.543-21',
    telefone: '99 11111-1111',
    email: 'maria@email.com',
    senha: '654321',
  );
  Cliente cliente3 = Cliente(
    nome: 'Rafael',
    cpf: '852.258.963-69',
    telefone: '19 19191-9191',
    email: 'rafael@email.com',
    senha: '456845',
  );

  // Depois, criaremos uma três lista de movimentações
  List<Movimentacao> movimentacoes1 = [
    Movimentacao(
      data: '01/01/2020',
      tipo: 'Depósito',
      valor: 100,
    ),
    Movimentacao(
      data: '02/01/2020',
      tipo: 'Depósito',
      valor: 200,
    ),
    Movimentacao(
      data: '03/01/2020',
      tipo: 'Depósito',
      valor: 300,
    ),
    Movimentacao(
      data: '04/01/2020',
      tipo: 'Depósito',
      valor: 400,
    ),
    Movimentacao(
      data: '05/01/2020',
      tipo: 'Depósito',
      valor: 500,
    ),
  ];
  List<Movimentacao> movimentacoes2 = [
    Movimentacao(
      data: '01/01/2020',
      tipo: 'Saque',
      valor: 100,
    ),
    Movimentacao(
      data: '02/01/2020',
      tipo: 'Saque',
      valor: 200,
    ),
    Movimentacao(
      data: '03/01/2020',
      tipo: 'Saque',
      valor: 300,
    ),
    Movimentacao(
      data: '04/01/2020',
      tipo: 'Saque',
      valor: 400,
    ),
    Movimentacao(
      data: '05/01/2020',
      tipo: 'Saque',
      valor: 500,
    ),
  ];
  List<Movimentacao> movimentacoes3 = [
    Movimentacao(
      data: '01/01/2020',
      tipo: 'Depósito',
      valor: 100,
    ),
    Movimentacao(
      data: '02/01/2020',
      tipo: 'Saque',
      valor: 200,
    ),
    Movimentacao(
      data: '03/01/2020',
      tipo: 'Depósito',
      valor: 300,
    ),
    Movimentacao(
      data: '04/01/2020',
      tipo: 'Saque',
      valor: 400,
    ),
    Movimentacao(
      data: '05/01/2020',
      tipo: 'Depósito',
      valor: 500,
    ),
  ];

  // Então, criaremos três contas para nossos clientes
  Conta conta1 = Conta(
    numero: 123,
    agencia: 123,
    saldo: 1500.0,
    cliente: cliente1,
    movimentacoes: movimentacoes1,
  );
  Conta conta2 = Conta(
    numero: 456,
    agencia: 456,
    saldo: 0.0,
    cliente: cliente2,
    movimentacoes: movimentacoes2,
  );
  Conta conta3 = Conta(
    numero: 789,
    agencia: 789,
    saldo: 300.0,
    cliente: cliente3,
    movimentacoes: movimentacoes3,
  );

  // E por fim, criaremos o banco
  BancoYourMoney banco = BancoYourMoney(
    nome: 'Your Money',
    telefone: '12 34567-8912',
    contas: [conta1, conta2, conta3],
  );

  // Agora, vamos testar as funções do banco
  banco.listarContas();

  Cliente cliente4 = Cliente(
    nome: 'Ricardo',
    cpf: '111.222.333-44',
    telefone: '21 56565-5656',
    email: 'ricardo@email.com',
    senha: '999999',
  );
  List<Movimentacao> movimentacoes4 = [
    Movimentacao(
      data: '01/03/2022',
      tipo: 'Depósito',
      valor: 100,
    ),
    Movimentacao(
      data: '02/03/2022',
      tipo: 'Saque',
      valor: 200,
    ),
    Movimentacao(
      data: '03/03/2022',
      tipo: 'Depósito',
      valor: 300,
    ),
    Movimentacao(
      data: '04/03/2022',
      tipo: 'Saque',
      valor: 400,
    ),
    Movimentacao(
      data: '05/03/2022',
      tipo: 'Depósito',
      valor: 500,
    ),
  ];
  Conta conta4 = Conta(
    numero: 101,
    agencia: 100,
    saldo: 1500.0,
    cliente: cliente4,
    movimentacoes: movimentacoes4,
  );

  banco.cadastrarConta(conta4);

  banco.listarContas();

  banco.removerConta(conta2);

  banco.listarContas();

  banco.listarMovimentacoes(conta1);

  banco.checarCliente(conta4);

  banco.checarSaldo(conta2);

  banco.checarSaldo(conta3);

  banco.listarMovimentacoes(conta4);

  banco.listarMovimentacoes(conta2);
}
