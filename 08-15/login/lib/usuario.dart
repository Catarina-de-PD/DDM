// ignore_for_file: unnecessary_this

class Usuario{
  String user = ""; 
  String senha = "";
 
  //construtor
  Usuario(this.user, this.senha);

  //getters e setters
  String get getUser => this.user;

  set setUsuario(String usuario) => this.user = usuario;

  get getSenha => this.senha;

  set setSenha( senha) => this.senha = senha;
}