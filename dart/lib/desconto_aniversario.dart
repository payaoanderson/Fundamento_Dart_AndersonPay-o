import 'dart:io';

void main() {
  // Solicita informações do produto
  print("Digite o código do produto: ");
  String codigoProduto = stdin.readLineSync()!;

  print("Digite o preço unitário do produto: ");
  double precoUnitario = double.parse(stdin.readLineSync()!);

  print("Digite a quantidade em estoque: ");
  int estoque = int.parse(stdin.readLineSync()!);

  // Variáveis para armazenar dados de vendas
  int numeroPedido = 0;
  int totalItensVendidos = 0;
  double valorTotalVendas = 0.0;

  while (true) {
    print("\nDigite a quantidade de itens desejados ou '0' para encerrar: ");
    int quantidadeDesejada = int.parse(stdin.readLineSync()!);

    // Verifica se o usuário quer encerrar
    if (quantidadeDesejada == 0) {
      break;
    }

    // Verifica se há estoque suficiente
    if (quantidadeDesejada <= estoque) {
      numeroPedido++;
      double valorVenda = precoUnitario * quantidadeDesejada;
      estoque -= quantidadeDesejada;
      totalItensVendidos += quantidadeDesejada;
      valorTotalVendas += valorVenda;

      print("\nPedido nº $numeroPedido realizado com sucesso.");
      print("Quantidade vendida: $quantidadeDesejada");
      print("Valor total da venda: R\$${valorVenda.toStringAsFixed(2)}");
      print("Estoque restante: $estoque\n");
    } else {
      print("\nEstoque insuficiente. Quantidade disponível: $estoque");
    }
  }

  // Exibe o resumo final das vendas
  print("\n### Resumo das Vendas ###");
  print("Total de itens vendidos: $totalItensVendidos");
  print("Valor total a ser pago: R\$${valorTotalVendas.toStringAsFixed(2)}");
}
