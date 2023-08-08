import 'package:cadastro/cliente_repository.dart';
import 'package:flutter/material.dart';

class Cliente extends StatefulWidget {
  const Cliente(String cpf, String email, int Idade, String nome, {super.key});

  @override
  State<Cliente> createState() => _ClienteState();
}

class _ClienteState extends State<Cliente> {
  String nome = "";
  String cpf = "";
  String email = "";
  int idade = 0;
  TextEditingController controllerNome = TextEditingController();
  TextEditingController controllerCpf = TextEditingController();
  TextEditingController controllerEmail = TextEditingController();
  TextEditingController controllerIdade = TextEditingController();
  ClienteRepository listaCl = ClienteRepository();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(251, 248, 194, 248),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.pushNamed(context, '/');
              },
              icon: Icon(Icons.home_filled)),
          IconButton(
              onPressed: () {
                Navigator.pushNamed(context, '/clientes');
              },
              icon: Icon(Icons.people)),
          IconButton(
              onPressed: () {
                Navigator.pushNamed(context, '/produto');
              },
              icon: Icon(Icons.shopping_basket_rounded)),
        ],
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.all(15),
            child: Text(
              "Cadastro de clientes",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(10),
            child: TextField(
              controller: controllerNome,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Nome',
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(10),
            child: TextField(
              controller: controllerCpf,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'CPF',
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(10),
            child: TextField(
              controller: controllerEmail,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Email',
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(10),
            child: TextField(
              controller: controllerIdade,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Idade',
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              nome = controllerNome.text;
              idade = int.parse(controllerIdade.text);
              email = controllerEmail.text;
              cpf = controllerCpf.text;
              Cliente cl = Cliente(cpf, email, idade, nome);
              listaCl.adicionar(cl);
              listaCl.imprimir();
              controllerNome.clear();
              controllerCpf.clear();
              controllerEmail.clear();
              controllerIdade.clear();
            },
            child: Text("Cadastrar"),
          )
        ],
      )),
    );
  }
}
