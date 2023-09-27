import 'maior-preco-test.dart';

void main() {
  MaiorPrecoTest teste = MaiorPrecoTest();
  teste.deveRetornarZeroSeCarrinhoVazio();
  teste.deveRetornarValorDoItemSeCarrinhoCom1Elemento();
  teste.deveRetornarMaiorValorSeCarrinhoContemMuitosElementos();
}
