import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Operações e conversões"),
        backgroundColor: Colors.purple[700],
        actions: [
          IconButton(
            onPressed: (){
              Navigator.pushNamed(context, '/calculadora');
            }, 
            icon: Icon(Icons.add)
          )
        ],
      ),
      body: const Center(
        child: Text('Hello World'),
      ),
    );
  }
}