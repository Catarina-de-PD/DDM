// ignore_for_file: unnecessary_this

class Usuario{
  String usuario = ""; 
  String senha = "";
 
  //construtor
  Usuario(this.usuario, this.senha);

  //getters e setters
  String get getUsuario => this.usuario;

  set setUsuario(String usuario) => this.usuario = usuario;

  get getSenha => this.senha;

  set setSenha( senha) => this.senha = senha;
}