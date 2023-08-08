import 'package:flutter/material.dart';

class MyCont extends StatefulWidget {
  const MyCont({super.key});

  @override
  State<MyCont> createState() => _MyContState();
}

class _MyContState extends State<MyCont> {
  int cont = 0;
  void Soma() {
    cont++;
  }

  void Subtrai() {
    if (cont != 0) {
      cont--;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Image.network('https://www.nicepng.com/png/detail/203-2031876_robot-2-icon-robot-icon-color.png', width: 120),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red.shade600),
                  onPressed: () {
                    Subtrai();
                    setState(() {});
                  },
                  child: Text("-"),
                ),
                SizedBox(width: 20),
                Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                    color: Colors.blue.shade300,
                    shape: BoxShape.circle,
                  ),
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      "$cont",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 30),
                    ),
                  ),
                ),
                SizedBox(width: 20),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green.shade300),
                  onPressed: () {
                    Soma();
                    setState(() {});
                  },
                  child: Text("+"),
                ),
              ],
            ),
            Text("Valor do contador: $cont"),
          ],
        ),
      ),
    );
  }
}
