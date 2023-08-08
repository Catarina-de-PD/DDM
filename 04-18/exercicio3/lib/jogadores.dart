import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/material.dart';

class jogadores extends StatelessWidget {
  const jogadores(this.jogador, this.linkImagem, {super.key});

  final String jogador; 
  final String linkImagem;

 @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        DecoratedBox(
          decoration: BoxDecoration(color: Colors.white24),
          child: Padding(
            padding: EdgeInsets.all(10),
            child: Column(
              children: [
                Text(jogador, style: TextStyle(fontSize: 22), textAlign:TextAlign.center),
                Image.network(linkImagem, width: 100),
              ],
            ),
          ),
        ),
      ],
    );
  }
}