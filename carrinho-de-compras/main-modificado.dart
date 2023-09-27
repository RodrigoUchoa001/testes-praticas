import 'package:test/test.dart';

import 'carrinho_de_compras.dart';

/// esse main vai ter uma modificação, os testes estaram declarados aqui, invés
/// de em uma classe separada
void main() {
  test('testa se o carrinho vazio retorna valor 0', () {
    CarrinhoDeCompras carrinho = CarrinhoDeCompras();

    expect(0, carrinho.maiorValor());
  });

  test('testa se o carrinho com 1 item retorna o valor do item', () {
    CarrinhoDeCompras carrinho = CarrinhoDeCompras();
    carrinho.adiciona(Item("geladeira", 1, 900.00));

    expect(900.00, carrinho.maiorValor());
  });

  test('testa se o carrinho com varios itens retorna o item de maior valor',
      () {
    CarrinhoDeCompras carrinho = CarrinhoDeCompras();
    carrinho.adiciona(Item("geladeira", 1, 900.00));
    carrinho.adiciona(Item("fogão", 1, 1500.00));
    carrinho.adiciona(Item("máquina de lavar", 1, 750.00));

    expect(1500.00, carrinho.maiorValor());
  });
}
