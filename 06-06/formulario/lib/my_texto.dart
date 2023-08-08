import 'package:flutter/material.dart';

class MyTexto extends StatefulWidget {
  const MyTexto({super.key});

  @override
  State<MyTexto> createState() => _MyTextoState();
}

class _MyTextoState extends State<MyTexto> {
  String textoDigitado = '';
  TextEditingController campoTexto = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children:[
            TextField(
              controller: campoTexto,
              onChanged: (value){
                print(value);
              },
            ),
            ElevatedButton(
              onPressed: (){
                textoDigitado = campoTexto.text;
                setState(() {
                  
                });
              }, 
              child: Text("ok")
            ),
            ElevatedButton(
              onPressed: (){
                textoDigitado = campoTexto.clear();
                setState(() {
                  
                });
              }, 
              child: Text("Limpar"),
            )
          ]
        )
      ),
    );
  }
}