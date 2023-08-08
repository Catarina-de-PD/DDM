import 'package:flutter/material.dart';
import 'package:portfolio/contador.dart';
import 'package:portfolio/sobrenos.dart';

import 'jogadores.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _indice = 0;

  List<Widget> _telas = [Jogadores("Rildo", "https://s2-ge.glbimg.com/g7tVP22EBqACXDQpE9fMM6Plm2Q=/0x0:640x360/984x0/smart/filters:strip_icc()/i.s3.glbimg.com/v1/AUTH_bc8228b6673f488aa253bbcb03c80ec5/internal_photos/bs/2021/L/I/oXIebjRKqk6p9Ms5OtbQ/9522291-640x360.jpg", "Shampoo", "https://pbs.twimg.com/media/D_Zl2KPW4AAQ1ZX.jpg:large", "Rivaldo", "https://i0.wp.com/juntoscompaulo.com.br/wp-content/uploads/2016/03/Rivaldo-de-Paulista-PE.jpg?resize=800%2C388"), Contador(), Sobrenos()];

  void _itemClicado(int index) {
    setState(() {
      _indice = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: _telas[_indice],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _indice,
          onTap: _itemClicado,
        items: const[
          BottomNavigationBarItem(
            icon: Icon(Icons.home, color: Color.fromARGB(255, 90, 29, 139)),
            label:"Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.plus_one, color: Color.fromARGB(255, 90, 29, 139)),
            label:"Contador"
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.info, color: Color.fromARGB(255, 90, 29, 139)),
            label:"Sobre nós"
          )
        ],
      ),
      /*bottomNavigationBar: BottomNavigationBar(
        onTap: ,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.plus_one)
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.info)
          ),
        ],
      ),*/
    );
  }
}