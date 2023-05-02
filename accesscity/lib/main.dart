import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

void main() {
  runApp(const MyApp());
}

void Pesquisa() {
  print("Pesquisar");
}

void Menu() {
  print("Menu");
}

void Carteira(){
  print("Carteira");
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'AccessCity',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Scaffold(
          appBar: AppBar(
            backgroundColor: Color.fromARGB(255, 8, 103, 136),
            //Icone menu
            leading: IconButton(
              icon: Icon(Icons.menu),
              color: Colors.white,
              iconSize: 50,
              onPressed: () {
                Menu();
              },
            ),
            actions: [
              //Pesquisa tem que ser um DropdownButton
              IconButton(
                icon: Icon(Icons.search),
                color: Colors.white,
                iconSize: 50,
                onPressed: () {
                  Pesquisa();
                },
              )
            ],
          ),
          body: SingleChildScrollView(
            child: Column(children: [
              //Inicio mapa
              SizedBox(
                width: 600,
                height: 900,
                child: FlutterMap(
                  options: MapOptions(
                    center: LatLng(-22.560992, -47.423818),
                    zoom: 13.0,
                  ),
                  layers: [
                    TileLayerOptions(
                      urlTemplate:
                          "https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png",
                      subdomains: ['a', 'b', 'c'],
                    ),
                  ],
                ),
              ),
              //Fim mapa
              //Footer
              Container(
                color: const Color.fromARGB(255, 8, 103, 136),
                height: 88,
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: 70,
                      ),
                      //Container do Switch
                      Container(
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 8, 103, 136),
                          borderRadius: BorderRadius.circular(50),
                          border: Border.all(
                            color: Colors.white,
                            width: 4,
                          ),
                        ),
                        child: Row(
                          children: [
                            Padding(padding: EdgeInsets.all(5)),
                            //Icone onibus
                            Icon(
                              Icons.bus_alert,
                              color: Colors.white,
                              size: 60,
                            ),
                            //Switch
                            Switch(
                              activeColor: Colors.white,
                              value: true,
                              onChanged: (value) {
                                print("VALUE : $value");
                              },
                            ),
                            //Localização
                            Icon(
                              Icons.location_on,
                              color: Colors.white,
                              size: 60,
                            )
                          ],
                        ),
                      ),
                      //Icon carteira
                      Container(
                        width: 70,
                        height: 70,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 8, 103, 136),
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: Colors.white,
                            width: 4,
                          ),
                        ),
                        child: 
                        IconButton(
                          icon: Icon(Icons.wallet),
                          color: Colors.white,
                          iconSize: 50,
                          onPressed: (){
                            Carteira();
                          },
                        ),
                      ),
                    ]),
              )
            ]),
          ),
        ));
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
