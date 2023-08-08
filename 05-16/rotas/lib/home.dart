import 'package:flutter/material.dart';
import 'package:rotas/favorite.dart';
import 'package:rotas/person.dart';
import 'package:rotas/basket.dart';


class MyHome extends StatefulWidget {
  const MyHome({super.key});

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  //Atributo
  int _indice = 0;

  List<Widget> _telas = [
    Person(),
    Basket(),
    Favorite(),
  ];

  //Metodo
  void _itemClicado(int index){
    setState((){
      _indice = index;
    });
    /*switch(index){
      case 0:
        Navigator.pushNamed(context, '/person');
        break;
      case 0:
        Navigator.pushNamed(context, '/basket');
        break;
      case 0:
        Navigator.pushNamed(context, '/favorite');
        break;
    }*/
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: 
        Text("HomePage"),
        backgroundColor: Colors.indigoAccent,
        actions: [
          IconButton(onPressed: (){
            Navigator.pushNamed(context, '/person');
          }, 
          icon: Icon(Icons.person)),
            
          IconButton(onPressed: (){
            Navigator.pushNamed(context, '/basket');
          }, 
          icon: Icon(Icons.shopping_basket)),
          
          IconButton(onPressed: (){
            Navigator.pushNamed(context, '/favorite');
          }, 
          icon: Icon(Icons.star)),
        ],
      ),
      body: _telas[_indice],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _indice,
        onTap: _itemClicado,
        items: const[
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label:"Person"
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_basket),
            label:"Basket"
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite
            ),
            label:"Favorite"
          )
        ],
      ),
    );
  }
}