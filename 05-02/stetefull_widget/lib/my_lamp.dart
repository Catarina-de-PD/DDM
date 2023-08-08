import 'package:flutter/material.dart';

class MyLamp extends StatefulWidget {
  const MyLamp({super.key});

  @override
  State<MyLamp> createState() => _MyLampState();
}

class _MyLampState extends State<MyLamp> {
  String lamp = 'https://i.stack.imgur.com/ybxlO.jpg';
  String msg = "Aceso";

  void mudaEstado() {
    if (msg == "Aceso") {
      lamp = "https://i.stack.imgur.com/b983w.jpg";
      msg = "Apagado";
    } else {
      lamp = "https://i.stack.imgur.com/ybxlO.jpg";
      msg = "Aceso";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Image.network(lamp),
            Text(msg),
            ElevatedButton(
                onPressed: () {
                  mudaEstado();
                  setState(() {});
                },
                child: Text("Mudar estado")),
          ],
        ),
      ),
    );
  }
}
