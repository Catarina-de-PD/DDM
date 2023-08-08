import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

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
        children: [],
      )),
    );
  }
}
