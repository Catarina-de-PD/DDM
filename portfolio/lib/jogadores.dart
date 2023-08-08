import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/material.dart';

class Jogadores extends StatelessWidget {
  Jogadores (this.jogador, this.linkImagem, this.jogador2, this.linkImagem2, this.jogador3, this.linkImagem3, {super.key});

  final String jogador; 
  final String linkImagem;
  final String jogador2; 
  final String linkImagem2;
  final String jogador3; 
  final String linkImagem3;

 @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Jogadores"),
        backgroundColor: Color.fromARGB(255, 90, 29, 139),
         actions: [
          IconButton(
            icon: Icon(Icons.home),
            onPressed: (){
              Navigator.pushNamed(context, '/');
            },
          ),
          IconButton(
            icon: Icon(Icons.plus_one),
            onPressed: (){
              Navigator.pushNamed(context, '/contador');
            },
          ),
          IconButton(
            icon: Icon(Icons.info),
            onPressed: (){
              Navigator.pushNamed(context, '/sobrenos');
            },
          ),
        ],
      ),
      body: Center(child: Column(children: [
        Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        DecoratedBox(
          decoration: BoxDecoration(color: Colors.white24),
          child: Padding(
            padding: EdgeInsets.all(10),
            child: Column(
              children: [
                Text(jogador, style: TextStyle(fontSize: 22), textAlign:TextAlign.center),
                Image.network(linkImagem, width: 200),
                 Text(jogador2, style: TextStyle(fontSize: 22), textAlign:TextAlign.center),
                Image.network(linkImagem2, width: 200),
                 Text(jogador3, style: TextStyle(fontSize: 22), textAlign:TextAlign.center),
                Image.network(linkImagem3, width: 200),
              ],
            ),
          ),
        ),
      ],
    ),
      ],)),
    );
  }
}