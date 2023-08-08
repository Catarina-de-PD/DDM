import 'package:flutter/material.dart';

class Calculadora extends StatefulWidget {
  const Calculadora({super.key});

  @override
  State<Calculadora> createState() => _CalculadoraState();
}

class _CalculadoraState extends State<Calculadora> {
  TextEditingController controller1 = TextEditingController();
  TextEditingController controller2 = TextEditingController();
  double numero1 = 0;
  double numero2 = 0;
  double resultado = 0;
  String warning = "";

  void soma(){
    resultado = numero1 + numero2;
    print(resultado);
  }

  void subtracao(){
    resultado = numero1 - numero2;
    print(resultado);
  }

  void multiplicacao(){
    resultado = numero1 * numero2;
    print(resultado);
  }

  void divisao(){
    resultado = numero1/numero2;
    print(resultado);
  }

  void ce(){
    numero1 = 0;
    numero2 = 0;
    resultado = 0;
    controller1.clear();
    controller2.clear();
    print(resultado);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Calculadora"),
        backgroundColor: Colors.purple[700],
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Operações para aprendizado do uso do Widget TextField"),
          Container(
              margin: EdgeInsets.all(10),
              child: TextField(
                controller: controller1,
                onChanged: (text){
                  numero1 = double.parse(text);
                },
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: BorderSide(color: Colors.purple)),
                  labelText: 'Número 1',
                ),
              )
          ),

          Container(
              margin: EdgeInsets.all(10),
              child: TextField(
                controller: controller2,
                onChanged: (text){
                  numero2 = double.parse(controller2.text);
                },
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: BorderSide(color: Colors.purple)),
                  labelText: 'Número 2',
                ),
              )
          ),
          Padding(padding: EdgeInsets.all(20)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              //Soma
              TextButton(
                onPressed: (){
                  soma();
                  setState(() {
                    warning = "Resultado: $resultado";
                  });
                }, 
                child: Text("+", style: TextStyle(color: Colors.white),),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(Colors.purple.shade700),
                  padding: MaterialStateProperty.all<EdgeInsets>(EdgeInsets.all(20)),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      side: BorderSide(color: Colors.purple.shade700)
                    )
                ),
                ),
              ),
              //Subtração
              TextButton(
                onPressed: (){
                  subtracao();
                  setState(() {
                    warning = "Resultado: $resultado";
                  });
                }, 
                child: Text("-", style: TextStyle(color: Colors.white),),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(Colors.purple.shade700),
                  padding: MaterialStateProperty.all<EdgeInsets>(EdgeInsets.all(20)),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      side: BorderSide(color: Colors.purple.shade700)
                    )
                ),
                ),
              ),
              //Multiplicacao
              TextButton(
                onPressed: (){
                  multiplicacao();
                  setState(() {
                    warning = "Resultado: $resultado";
                  });
                }, 
                child: Text("*", style: TextStyle(color: Colors.white),),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(Colors.purple.shade700),
                  padding: MaterialStateProperty.all<EdgeInsets>(EdgeInsets.all(20)),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      side: BorderSide(color: Colors.purple.shade700)
                    )
                ),
                ),
              ),//Divisao
              TextButton(
                onPressed: (){
                  divisao();
                  setState(() {
                    warning = "Resultado: $resultado";
                  });
                }, 
                child: Text("/", style: TextStyle(color: Colors.white),),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(Colors.purple.shade700),
                  padding: MaterialStateProperty.all<EdgeInsets>(EdgeInsets.all(20)),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      side: BorderSide(color: Colors.purple.shade700)
                    )
                ),
                ),
              ),
              //CE
              TextButton(
                onPressed: (){
                  ce();
                  setState(() {
                    warning = " ";
                  });
                }, 
                child: Text("CE", style: TextStyle(color: Colors.white),),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(Colors.purple.shade700),
                  padding: MaterialStateProperty.all<EdgeInsets>(EdgeInsets.all(20)),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      side: BorderSide(color: Colors.purple.shade700)
                    )
                ),
                ),
              ),
            ],
          ),
        Text(warning, style: TextStyle(color: Colors.red),)
        ],
      )),
    );
  }
}
