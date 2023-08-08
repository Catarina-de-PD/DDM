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
          title: Text("Tartarugas ninjas 3"
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            DecoratedBox(
            decoration: BoxDecoration (color: Colors.blue),
            child: Padding(padding: EdgeInsets.all(30),
            child: Text("Tartaruga", style: TextStyle(fontSize: 50))
            )
            ),

            SizedBox(
              height: 180,
              width: 150,
              child: Image.network('https://www.google.com/url?sa=i&url=http%3A%2F%2Fportalmimoso.com.br%2Fcarnaval%2Ffotos%2Farquivo%2Fmimoso-do-sul-2014%2Fg4.html&psig=AOvVaw2PRQslTMrrna57o6zbjL6G&ust=1681303664836000&source=images&cd=vfe&ved=0CBEQjRxqFwoTCIj628vuof4CFQAAAAAdAAAAABAD'),
            ),

            DecoratedBox(
            decoration: BoxDecoration (color: Colors.amber),
            child: Padding(padding: EdgeInsets.all(30),
            child: Text("Parra", style: TextStyle(fontSize: 50))
            )
            ),

            DecoratedBox( 
            decoration: BoxDecoration (color: Colors.redAccent),
            child: Padding(padding: EdgeInsets.all(30),
            child: Text("Catarina 2", style: TextStyle(fontSize: 50))
            )
            ),
          ],
        ),
      ),
    ),
    );
  }
}
