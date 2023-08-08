import 'package:flutter/material.dart';

class Favorite extends StatelessWidget {
  const Favorite({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Favorite"),
        backgroundColor: Colors.yellow.shade700,
      ),
      body: Center(
        child: Column(
          children:[
            Text("Página Favorite"),
            ElevatedButton(onPressed: (){
              Navigator.pushNamed(context, '/');
              
            }, 
              child: Text("Voltar"),
            )
          ],
      )),
    );
  }
}
