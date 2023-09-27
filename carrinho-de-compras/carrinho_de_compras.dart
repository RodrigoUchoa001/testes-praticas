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

  double maiorValor() {
    if (itens.length == 0) return 0;
    double maior = itens[0].getValorTotal();

    for (Item item in itens) {
      if (maior < item.getValorTotal()) {
        maior = item.getValorTotal();
      }
    }

    return maior;
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
