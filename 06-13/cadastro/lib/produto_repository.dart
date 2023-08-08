import 'produto.dart';

class ProdutoRepository {
  List<Produto> _listaProdutos = [];

  //construtor
  ProdutoRepository() {
    this._listaProdutos = [];
  }

  void adicionar(Produto pl) {
    _listaProdutos.add(pl);
  }

  void imprimir() {
    for (var i = 0; i < _listaProdutos.length; i++) {
      print(
          "Nome: ${_listaProdutos[i].nome}, Preço: ${_listaProdutos[i].preco}, Quantidade: ${_listaProdutos[i].quantidade}, Tipo: ${_listaProdutos[i].tipo},");
    }
  }
}
