// ignore_for_file: camel_case_types, unused_field, prefer_final_fields, unnecessary_this, avoid_print

import 'usuario.dart';

class UsuarioRepository{
  List<Usuario> _listaUsuario = [
    Usuario("Catarina", "catarina"),
    Usuario("João", "joao"),
    Usuario("Maria", "maria"),
  ];


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
      if(us.user == u.user && us.senha == u.senha){
        print(us.user);
        //Instance of usuario
        print(us.senha);
        return true;
      }
    }
    return false;
  }
}