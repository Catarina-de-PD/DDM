import 'package:flutter/material.dart';

class Basket extends StatelessWidget {
  const Basket({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Basket"),
        backgroundColor: Colors.deepPurpleAccent,
      ),
      body: Center(
        child: Column(
          children:[
            Text("Página Basket"),
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
