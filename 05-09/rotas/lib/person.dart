import 'package:flutter/material.dart';

class Person extends StatelessWidget {
  const Person({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Person"),
        backgroundColor: Colors.red.shade600,
      ),
      body: Center(
        child: Column(
          children:[
            Text("Página Person"),
            ElevatedButton(onPressed: (){
              Navigator.pushNamed(context, '/');
              
            }, 
            child: Text("Voltar"))
          ],
      )),
    );
  }
}
