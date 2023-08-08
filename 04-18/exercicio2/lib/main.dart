import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Exercício 1"
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            DecoratedBox(
            decoration: BoxDecoration (color: Colors.blue),
            child: Padding(padding: EdgeInsets.all(30),
            child: Text("Eu", style: TextStyle(fontSize: 30))
            )
            ),

            SizedBox(
              height: 20,
            ),

            
            DecoratedBox(
            decoration: BoxDecoration (color: Colors.red),
            child: Padding(padding: EdgeInsets.all(30),
            child: Text("Amo", style: TextStyle(fontSize: 30))
            )
            ),
            
           
            
            SizedBox(
              height: 20,
            ),

            Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children:[

            DecoratedBox( 
            decoration: BoxDecoration (color: Colors.redAccent),
            child: Padding(padding: EdgeInsets.all(30),
            child: Text("a", style: TextStyle(fontSize: 30))
            )
            ),

            SizedBox(
              width: 20,
            ),

            DecoratedBox( 
            decoration: BoxDecoration (color: Colors.yellow),
            child: Padding(padding: EdgeInsets.all(30),
            child: Text("aula", style: TextStyle(fontSize: 30))
            )
            ),

            SizedBox(
              width: 20,
            ),

            DecoratedBox( 
            decoration: BoxDecoration (color: Colors.amber),
            child: Padding(padding: EdgeInsets.all(30),
            child: Text("da", style: TextStyle(fontSize: 30))
            )
            ),

            ],
            ),
            
            SizedBox(
              height: 20,
            ),

            DecoratedBox( 
            decoration: BoxDecoration (color: Colors.purple),
            child: Padding(padding: EdgeInsets.all(30),
            child: Text("Tania", style: TextStyle(fontSize: 30))
            )
            ),
            
            SizedBox(
              height: 20,
            ),

            DecoratedBox( 
            decoration: BoxDecoration (color: Colors.white),
            child: Image.network('https://static.vecteezy.com/system/resources/previews/010/329/885/original/doodle-love-heart-free-png.png', height:100)
            ),
          ],
        ),
      ),
    ),
    );
  }
}