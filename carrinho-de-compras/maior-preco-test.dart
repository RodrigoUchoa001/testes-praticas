import 'carrinho_de_compras.dart';
import 'package:test/test.dart';

class MaiorPrecoTest {
  void deveRetornarZeroSeCarrinhoVazio() {
    CarrinhoDeCompras carrinho = CarrinhoDeCompras();

    MaiorPreco algoritmo = MaiorPreco();
    double valor = algoritmo.encontra(carrinho);

    test('testa se o carrinho vazio retorna valor 0', () {
      expect(0, valor);
    });
  }

  void deveRetornarValorDoItemSeCarrinhoCom1Elemento() {
    CarrinhoDeCompras carrinho = CarrinhoDeCompras();
    carrinho.adiciona(Item("geladeira", 1, 900.00));

    MaiorPreco algoritmo = MaiorPreco();
    double valor = algoritmo.encontra(carrinho);

    test('testa se o carrinho com 1 item retorna o valor do item', () {
      expect(900.00, valor);
    });
  }
}

class MaiorPreco {
  double encontra(CarrinhoDeCompras carrinho) {
    if (carrinho.getItens().length == 0) return 0;
    return carrinho.getItens()[0].getValorTotal();
  }
}
