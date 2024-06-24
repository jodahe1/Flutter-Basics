import 'package:flutter/material.dart';
import 'dart:math';
void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: const Center( child:  Text('Dicee')),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}
class DicePage extends StatefulWidget {
  const DicePage({super.key});

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
   int dicenum1=1;
   int dicenum2=5;
  @override
  Widget build(BuildContext context) {
   void randomize()
   {
     setState(() {
                dicenum2 = Random().nextInt(6)+1;
                         dicenum1 = Random().nextInt(6)+1;
                            },
                            );
   }
    return Center(
      child: Row(
        children: <Widget>[
       
          Expanded(child: TextButton (
            onPressed: () {
             randomize();
            },
            child: Image.asset('images/dice$dicenum1.png'),
            
            )
          ),

          Expanded(child: TextButton(
           onPressed: () {
             randomize();
            }
            , 
            child: Image.asset('images/dice$dicenum2.png')
            ),
          )
        ],
      ),
    );
  }
}

