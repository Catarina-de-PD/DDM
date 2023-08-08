import 'package:flutter/material.dart';
import 'package:modularizacao/aluno_repository.dart';

import 'aluno.dart';

class MyCadasto extends StatefulWidget {
  const MyCadasto({super.key});

  @override
  State<MyCadasto> createState() => _MyCadastoState();
}

class _MyCadastoState extends State<MyCadasto> {
  int ra = 0;
  String nome = " ";
  TextEditingController campoRa = TextEditingController();
  TextEditingController campoNome = TextEditingController();
  AlunoRepository listaAl = AlunoRepository();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(10),
          child:
        Column(
        children: [
          TextField(
            controller: campoNome,
          ),
          TextField(
            controller: campoRa,
          ),
          SizedBox(height: 10,),
          ElevatedButton(
            onPressed: (){
              ra = int.parse(campoRa.text);
              nome = campoNome.text;
              Aluno al = Aluno(nome, ra);
              listaAl.adicionar(al);
              listaAl.imprimir();
              campoNome.clear();
              campoRa.clear();
            }, 
            child: Text("Cadastrar"),
          )
        ],
      )),)
    );
  }
}

