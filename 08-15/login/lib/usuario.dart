// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: unnecessary_this

class Usuario {
  String _user;
  String _senha;

 String get user => this._user;

 set user(String value) => this._user = value;

  get senha => this._senha;

 set senha( value) => this._senha = value;
 
  Usuario(
     this._user,
     this._senha,
  );

}
