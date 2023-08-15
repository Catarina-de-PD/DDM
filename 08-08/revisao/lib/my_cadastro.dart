// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MyCadastro extends StatefulWidget {
  const MyCadastro({super.key});

  @override
  State<MyCadastro> createState() => _MyCadastroState();
}

class _MyCadastroState extends State<MyCadastro> {
  TextEditingController campoRa = TextEditingController();
  TextEditingController campoNome = TextEditingController();
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  int ra = 0;
  String nome = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 120, 11, 139),
        title: Text("Exercicio verificação"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Form(
                key: formKey,
                child: Column(
                  //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextFormField(
                      controller: campoRa,
                      keyboardType: TextInputType.number,
                      inputFormatters: <TextInputFormatter>[
                        FilteringTextInputFormatter.digitsOnly
                      ],
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20)),
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return ("RA não pode ser vazio");
                        } else if (int.parse(campoRa.text) < 10) {
                          return ("RA deve ser maior que 10");
                        } else {
                          return null;
                        }
                      },
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      controller: campoNome,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20)),
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return ("O nome não pode ser vazio");
                        } else if (campoNome.text.length < 5) {
                          return ("O nome precisa ter mais que 5 caracteres");
                        } else {
                          return null;
                        }
                      },
                    ),
                  ],
                )),
            ElevatedButton(
              onPressed: () {
                if (formKey.currentState!.validate()) {
                  ra = int.parse(campoRa.text);
                  nome = campoNome.text;
                  mostrarMsgSucesso();
                  setState(() {});
                }
              },
              child: Text("Cadastrar"),
            ),
            Text("Valores digitados: $ra, $nome"),
          ],
        ),
      ),
    );
  }

  //metodo
  void mostrarMsgSucesso() {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text("Aluno cadastrado com sucesso")),
    );
  }
}
