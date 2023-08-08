import 'package:cadastro/model_cliente.dart';
import 'package:cadastro/home.dart';
import 'package:cadastro/model_produto.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        //useMaterial3: true,
      ),
      routes: {
        '/': (context) => HomePage(),
        '/produto': (context) => Produto(),
        '/clientes': (context) => Cliente(),
      },
    );
  }
}
