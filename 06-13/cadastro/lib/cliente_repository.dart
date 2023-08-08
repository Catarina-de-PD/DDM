import 'cliente.dart';

class ClienteRepository {
  List<Cliente> _listaClientes = [];

  //construtor
  ClienteRepository() {
    this._listaClientes = [];
  }

  void adicionar(Cliente cl) {
    _listaClientes.add(cl);
  }

  void imprimir() {
    for (var i = 0; i < _listaClientes.length; i++) {
      print(
          "Nome: ${_listaClientes[i].nome}, Idade: ${_listaClientes[i].idade}, CPF: ${_listaClientes[i].cpf}, Email: ${_listaClientes[i].email},");
    }
  }
}
