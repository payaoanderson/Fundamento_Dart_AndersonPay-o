import 'dart:io';
void main() {
  print("Digite o código do produto: ");
  String codigoProduto = stdin.readLineSync()!;
  print("Digite o preço unitário do produto: ");
  double precoUnitario = double.parse(stdin.readLineSync()!);
  print("Digite a quantidade em estoque: ");
  int estoque = int.parse(stdin.readLineSync()!);
  int numeroPedido = 0;
  int totalItensVendidos = 0;
  double valorTotalVendas = 0.0;
  while (true) {
    print("\nDigite a quantidade de itens desejados ou '0' para encerrar: ");
    int quantidadeDesejada = int.parse(stdin.readLineSync()!);
    if (quantidadeDesejada == 0) {
      break;
    }
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
  print("\n### Resumo das Vendas ###");
  print("Total de itens vendidos: $totalItensVendidos");
  print("Valor total a ser pago: R\$${valorTotalVendas.toStringAsFixed(2)}");
}
