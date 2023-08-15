// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:login/usuario.dart';
import 'package:login/usuario_repository.dart';

class MyLogin extends StatefulWidget {
  const MyLogin({super.key});

  @override
  State<MyLogin> createState() => _MyLoginState();
}

class _MyLoginState extends State<MyLogin> {
  GlobalKey<FormState> formkey = GlobalKey<FormState>();
  TextEditingController campoUsuario = TextEditingController();
  TextEditingController campoSenha = TextEditingController();
  String usuario = "";
  String senha = "";
  bool verificaLogin = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://png.pngtree.com/png-vector/20190919/ourlarge/pngtree-user-login-or-authenticate-icon-on-gray-background-flat-icon-ve-png-image_1742031.jpg"),
                radius: 120,
              ),
              Form(
                  key: formkey,
                  child: Column(
                    children: [
                      //Usuario
                      Padding(
                        padding: EdgeInsets.all(10.0),
                        child: TextFormField(
                            controller: campoUsuario,
                            decoration: InputDecoration(
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10)),
                                label: Text("Usuário")),
                            validator: (value) {
                              if (value!.isEmpty) {
                                return ("O usuario não pode ser vazio");
                              }
                            }),
                      ),
                      //Senha
                      Padding(
                        padding: EdgeInsets.all(10.0),
                        child: TextFormField(
                          controller: campoSenha,
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10)),
                              label: Text("Senha")),
                        ),
                      ),
                      //Botao
                      ElevatedButton(
                        onPressed: () {
                          if(formkey.currentState!.validate()){
                            usuario = campoUsuario.text;
                            senha = campoSenha.text;
                            Usuario user = Usuario(usuario, senha);
                           
                          }
                        },
                        child: Text("Login"),
                      ),
                    ],
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
