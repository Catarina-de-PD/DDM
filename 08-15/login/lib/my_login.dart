// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last, avoid_types_as_parameter_names, non_constant_identifier_names

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
  UsuarioRepository repository = UsuarioRepository();
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
                          obscureText: false,
                          controller: campoSenha,
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10)),
                              label: Text("Senha")),
                          validator: (value){
                            if(value!.isEmpty){
                              return("A senha não pode ser vazia");
                            }else if(value.length<8){
                              return("A senha deve ter mais de 8 dígitos");
                            }
                          },
                        ),
                      ),
                      //Botao
                      ElevatedButton(
                        onPressed: () {
                          if(formkey.currentState!.validate()){
                            usuario = campoUsuario.text;
                            senha = campoSenha.text;
                            Usuario us = Usuario(usuario, senha);
                            if(repository.verificaLogin(us)){
                              campoUsuario.clear();
                              campoSenha.clear();
                              showDialog(
                                context: context, 
                                builder: (BuildContext){
                                  return AlertDialog(
                                    title: Text("Login"),
                                    content: Text("Login bem sucedido"),
                                    actions: [
                                      TextButton(
                                        child: Text("OK"),
                                        onPressed: (){
                                          Navigator.pushNamed(context, '/home');
                                        },
                                      )
                                    ]
                                  );
                                }
                              );
                            }else{
                              showDialog(
                                context: context, 
                                builder: (BuildContext){
                                  return AlertDialog(
                                    title: Text("Login"),
                                    content: Text("Login mal sucedido"),
                                    actions: [
                                      TextButton(
                                        child: Text("OK"),
                                        onPressed: (){
                                          Navigator.pop(context);
                                        },
                                      )
                                    ]
                                  );
                                }
                              );
                            }
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
