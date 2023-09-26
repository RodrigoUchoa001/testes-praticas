class CarrinhoDeCompras {
  late List<Item> itens;

  CarrinhoDeCompras() {
    this.itens = [];
  }
}

class Item {
  String descricao;
  int quantidade;
  double valorUnitario;

  Item(this.descricao, this.quantidade, this.valorUnitario);

  double getValorTotal() {
    return this.valorUnitario * this.quantidade;
  }
}
