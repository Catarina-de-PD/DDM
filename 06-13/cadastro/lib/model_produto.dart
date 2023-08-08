import 'package:cadastro/produto_repository.dart';
import 'package:flutter/material.dart';

class Produto extends StatefulWidget {
  const Produto(String nome, double preco, int quantidade, String tipo,
      {super.key});

  @override
  State<Produto> createState() => _ProdutoState();
}

class _ProdutoState extends State<Produto> {
  String nome = "";
  double preco = 0;
  int quantidade = 0;
  String tipo = "";
  TextEditingController controllerNome = TextEditingController();
  TextEditingController controllerPreco = TextEditingController();
  TextEditingController controllerQuantidade = TextEditingController();
  TextEditingController controllerTipo = TextEditingController();
  ProdutoRepository listaCl = ProdutoRepository();

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
        child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
          Padding(
            padding: EdgeInsets.all(15),
            child: Text(
              "Cadastro de produtos",
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
              controller: controllerPreco,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Preço',
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(10),
            child: TextField(
              controller: controllerQuantidade,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Quantidade',
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(10),
            child: TextField(
              controller: controllerTipo,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Tipo',
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              nome = controllerNome.text;
              preco = double.parse(controllerPreco.text);
              quantidade = int.parse(controllerQuantidade.text);
              tipo = controllerTipo.text;
              Produto pl = Produto(nome, preco, quantidade, tipo);
              listaCl.adicionar(pl);
              listaCl.imprimir();
              controllerNome.clear();
              controllerPreco.clear();
              controllerQuantidade.clear();
              controllerTipo.clear();
            },
            child: Text("Cadastrar"),
          )
        ]),
      ),
    );
  }
}
