import 'package:flutter/material.dart';

class Apresentacao extends StatelessWidget {
  const Apresentacao({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(
                'https://www.cotil.unicamp.br/wp-content/uploads/2019/03/Jose-Alberto-Matioli.jpg'),
            Row(
              children: const[
                Text("Eu sou o Matioli"),
              ],
            )
          ],
        ),
      ),
    );

  }
}