// ignore_for_file: camel_case_types, unused_field, prefer_final_fields, unnecessary_this, avoid_print

import 'usuario.dart';

class UsuarioRepository{
  List<Usuario> _listaUsuario = [
    Usuario("Catarina", "catarina"),
    Usuario("João", "joao"),
    Usuario("Maria", "maria"),
  ];

  //construtor
  UsuarioRepository(){
    this._listaUsuario = [];
  }

  void adicionar(Usuario us){
    _listaUsuario.add(us);
  }

  void imprimir(){
    for(var i=0; i<_listaUsuario.length; i++){
      print("Usuário: ${_listaUsuario[i].user}, Senha: ${_listaUsuario[i].user},");
    }
  }

  bool verificaLogin(Usuario us){
    //variável de us chega certo
    for(var u in _listaUsuario){
      if(us.getUser == u.getUser && us.getSenha == u.getSenha){
        print(us.getUser);
        //Instance of usuario
        print(us.getSenha);
        return true;
      }
    }
    return true;
  }
}