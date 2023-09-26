class CarrinhoDeCompras {
  late List<Item> itens;

  CarrinhoDeCompras() {
    this.itens = [];
  }

  void adiciona(Item item) {
    this.itens.add(item);
  }

  List<Item> getItens() {
    return itens;
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
