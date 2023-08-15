// ignore_for_file: camel_case_types, unused_field, prefer_final_fields, unnecessary_this, avoid_print

import 'usuario.dart';

class UsuarioRepository{
  List<Usuario> _listaUsuario = [];

  //construtor
  UsuarioRepository(){
    this._listaUsuario = [];
  }

  void adicionar(Usuario us){
    _listaUsuario.add(us);
  }

  void imprimir(){
    for(var i=0; i<_listaUsuario.length; i++){
      print("Usuário: ${_listaUsuario[i].usuario}, Senha: ${_listaUsuario[i].usuario},");
    }
  }

  bool login(Usuario us){
    for(var u in _listaUsuario){
      
    }
    return false;
  }
}