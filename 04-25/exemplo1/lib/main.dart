// ignore_for_file: prefer_const_constructors

import 'package:exemplo1/my_widget.dart';
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
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MyWidget("Casa amarela", Colors.amber, 20),
              SizedBox(height: 20),

              Image.network('https://imgcy.trivago.com/c_fill,d_dummy.jpeg,e_sharpen:60,f_auto,h_627,q_auto,w_1200/itemimages/45/09/4509700.jpeg', width: 400),
              SizedBox(height: 20),

              MyWidget("Casa vermelha", Colors.red, 20),
              SizedBox(height: 20),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Eu"),
                  SizedBox(width:30),
                  Text("amo"),
                  SizedBox(width: 30),
                  Text("a casa amarela")
                ],
              )
            ],
          )
        )
        ),
    );
  }
}