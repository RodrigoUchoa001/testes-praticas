import 'carrinho_de_compras.dart';
import 'package:test/test.dart';

class MaiorPrecoTest {
  void deveRetornarZeroSeCarrinhoVazio() {
    CarrinhoDeCompras carrinho = CarrinhoDeCompras();

    // MaiorPreco algoritmo = MaiorPreco();
    // double valor = algoritmo.encontra(carrinho);

    test('testa se o carrinho vazio retorna valor 0', () {
      expect(0, carrinho.maiorValor());
    });
  }

  void deveRetornarValorDoItemSeCarrinhoCom1Elemento() {
    CarrinhoDeCompras carrinho = CarrinhoDeCompras();
    carrinho.adiciona(Item("geladeira", 1, 900.00));

    // MaiorPreco algoritmo = MaiorPreco();
    // double valor = algoritmo.encontra(carrinho);

    test('testa se o carrinho com 1 item retorna o valor do item', () {
      expect(900.00, carrinho.maiorValor());
    });
  }

  void deveRetornarMaiorValorSeCarrinhoContemMuitosElementos() {
    CarrinhoDeCompras carrinho = CarrinhoDeCompras();
    carrinho.adiciona(Item("geladeira", 1, 900.00));
    carrinho.adiciona(Item("fogão", 1, 1500.00));
    carrinho.adiciona(Item("máquina de lavar", 1, 750.00));

    // MaiorPreco algoritmo = MaiorPreco();
    // double valor = algoritmo.encontra(carrinho);

    test('testa se o carrinho com varios itens retorna o item de maior valor',
        () {
      expect(1500.00, carrinho.maiorValor());
    });
  }
}

// class MaiorPreco {
//   double encontra(CarrinhoDeCompras carrinho) {
//     if (carrinho.getItens().length == 0) return 0;
//     double maior = carrinho.getItens()[0].getValorTotal();

//     for (Item item in carrinho.itens) {
//       if (maior < item.getValorTotal()) {
//         maior = item.getValorTotal();
//       }
//     }

//     return maior;
//   }
// }
