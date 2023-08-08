import 'package:flutter/material.dart';


class MyWidget extends StatelessWidget {
  //atributos
  final String nome;
  final Color cor;
  final double tamanhoFonte;
  
  const MyWidget(this.nome, this.cor, this.tamanhoFonte, {super.key});

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        color: cor),
        child: Text(nome, style: TextStyle(fontSize: 30),),
      );
  }
}