/*
Crie uma classe chamada "NotaFiscal", que possui:
- Nome do cliente
- Nome da loja
- Valor da nota fiscal

E que possua também o seguinte método:
- imprimirNotaFiscal()
  - Imprimir na tela o nome do cliente, nome da loja e valor da nota fiscal
  - Exemplo: "Cliente: NomeDoCliente, Loja: NomeDaLoja, Valor: 100.0"
*/

class NotaFiscal {
  String nomeCliente;
  String nomeLoja;
  double valor;

  NotaFiscal(this.nomeCliente, this.nomeLoja, this.valor);

  void imprimirNotaFiscal() {
    print("Cliente: $nomeCliente, Loja: $nomeLoja, Valor: $valor");
  }
}

void main() {
  NotaFiscal notaFiscal = NotaFiscal("Cliente", "Loja", 100.0);
  notaFiscal.imprimirNotaFiscal();
}
