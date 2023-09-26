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
}

class MaiorPreco {
  double encontra(CarrinhoDeCompras carrinho) {
    return 0;
  }
}
